import React from 'react';
import MarkerManager from '../../utils/marker_manager';

class Map extends React.Component {
  constructor(props) {
    super(props);
    this.defaultProps = props;
  }

  componentDidMount() {
    let mapEl = document.getElementById('map');
    let options = {
      center: {lat: this.props.spacetime.lat, lng: this.props.spacetime.lng},
      zoom: 6
    };

    if (this.props.spacetime.era === "Antiquity" || this.props.spacetime.era === "Middle_Ages" || this.props.spacetime.era === "Renaissance" || this.props.spacetime.era === "Enlightenment") {
      options.styles = [
        {
          "featureType": "transit",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "road",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "poi",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "administrative.province",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "administrative.neighborhood",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "administrative.land_parcel",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "water",
          "elementType": "geometry.fill",
          "stylers": [
            { "color": "#F2C38F" }
          ]
        },{
          "featureType": "water",
          "elementType": "labels",
          "stylers": [
            { "color": "#000000" }
          ]
        },{
          "featureType": "landscape",
          "elementType": "geometry.fill",
          "stylers": [
            { "color": "#CFA251" },
            { "saturation": -55 }
          ]
        },{
          "featureType": "administrative",
          "elementType": "labels",
          "stylers": [
            { "visibility": "simplified" }
          ]
        }
      ];
    } else if (this.props.spacetime.era === "Space_Age") {
      options.styles = [
        {
          "featureType": "transit",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "poi",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "administrative.province",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "water",
          "elementType": "geometry.fill",
          "stylers": [
            { "color": "#1947d7" },
            { "lightness": -51 }
          ]
        },{
          "featureType": "water",
          "elementType": "labels",
          "stylers": [
            { "color": "#000000" }
          ]
        },{
          "featureType": "landscape",
          "elementType": "geometry.fill",
          "stylers": [
            { "color": "#808080" }
          ]
        },{
          "featureType": "road",
          "elementType": "geometry",
          "stylers": [
            { "color": "#222222" }
          ]
        }
      ]
    } else if (this.props.spacetime.era === "Post_Apocalypse") {
      options.styles = [
        {
          "featureType": "transit",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "poi",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "administrative.province",
          "stylers": [
            { "visibility": "off" }
          ]
        },{
          "featureType": "water",
          "elementType": "geometry.fill",
          "stylers": [
            { "lightness": -51 },
            { "color": "#808080" }
          ]
        },{
          "featureType": "water",
          "elementType": "labels",
          "stylers": [
            { "color": "#000000" }
          ]
        },{
          "featureType": "landscape",
          "elementType": "geometry.fill",
          "stylers": [
            { "color": "#222222" }
          ]
        },{
          "featureType": "road",
          "elementType": "geometry",
          "stylers": [
            { "color": "#dddddd" }
          ]
        }
      ]
    }

    this.map = new google.maps.Map(mapEl, options);
    this.markerManager = new MarkerManager(this.map);
    this.markerManager.updateMarkers(this.props.sites);
    this.map.addListener('idle', () => {
      let bounds = this.map.getBounds();
      let ne = {lat: bounds.getNorthEast().lat(), lng: bounds.getNorthEast().lng()};
      let sw = {lat: bounds.getSouthWest().lat(), lng: bounds.getSouthWest().lng()};
      bounds = {northEast: ne, southWest: sw};
      this.props.updateBounds(bounds);

    });
  }

  componentDidUpdate() {
    this.markerManager.updateMarkers(this.props.sites);
    if (this.defaultProps.spacetime.lat != this.props.spacetime.lat && this.defaultProps.spacetime.lng != this.props.spacetime.lng) {
      this.map.setCenter({lat: this.props.spacetime.lat, lng: this.props.spacetime.lng});
      this.defaultProps = this.props
    }
  }

  render() {
    return (
      <div id="map" className="map"></div>
    );
  }

}

export default Map;
