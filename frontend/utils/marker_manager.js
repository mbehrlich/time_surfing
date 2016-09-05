class MarkerManager {
  constructor(map) {
    this.map = map;
    this.markers = [];
    this.infoWindow = new google.maps.InfoWindow();
  }

  updateMarkers(sites) {
    let toAdd = this._sitesToAdd(sites);
    toAdd.forEach((site) => {
      this._createMarkerFromSite(site);
    });
    let toRemove = this._sitesToRemove(sites);
    toRemove.forEach((marker) => {
      this._removeMarker(marker);
    });
  }

  _sitesToAdd(sites) {
    let toAdd = [];
    let add;
    sites.forEach((site) => {
      add = true;
      this.markers.forEach((marker) => {
        if (marker.siteid === site.site.id) {
          add = false;
        }
      });
      if (add) {
        toAdd.push(site);
      }
    });
    return toAdd;
  }

  _sitesToRemove(sites) {
    let toRemove = [];
    let remove;
    this.markers.forEach((marker) => {
      remove = true;
      sites.forEach((site) => {
        if (site.site.id === marker.siteid) {
          remove = false;
        }
      });
      if (remove) {
        toRemove.push(marker);
      }
    });
    return toRemove;
  }

  _createMarkerFromSite(site) {
    let marker = new google.maps.Marker({
      position: {lat: site.site.lat, lng: site.site.lng},
      map: this.map,
      siteid: site.site.id,
      icon: "http://res.cloudinary.com/dush6wf6z/image/upload/c_scale,w_25/v1473027905/marker_te9oqn.png"
    });
    let content = `<div class='info-window'>
      <a href="/#/users/${site.id}"><img src="${site.profile ? site.profile : 'http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png'}" /></a>
      <div>
        <h4><a href="/#/users/${site.id}">${site.firstname} ${site.lastname}</a></h4>
        <h5>${site.year}</h5>
      </div>
    </div>`
    marker.addListener("click", () => {
      this.infoWindow.setContent(content);
      this.infoWindow.open(this.map, marker);
    })
    this.markers.push(marker);
  }

  _removeMarker(marker) {
    marker.setMap(null);
    let removeIdx;
    this.markers.forEach((marker2, idx) => {
      if (marker.siteid === marker2.siteid) {
        removeIdx = idx;
      }
    });
    this.markers = this.markers.slice(0, removeIdx).concat(this.markers.slice(removeIdx + 1));
  }

}

export default MarkerManager;
