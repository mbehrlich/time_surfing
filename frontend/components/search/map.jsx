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
