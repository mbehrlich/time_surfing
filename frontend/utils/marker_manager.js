class MarkerManager {
  constructor(map) {
    this.map = map;
    this.markers = [];
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
      siteid: site.site.id
    });
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
