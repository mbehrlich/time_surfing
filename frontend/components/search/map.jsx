import React from 'react';

class Map extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    let mapEl = document.getElementById('map');
    let options = {
      center: {lat: 30, lng: 30},
      zoom: 8
    };
    this.map = new google.maps.Map(mapEl, options);
  }

  render() {
    return (
      <div id="map" className="map"></div>
    );
  }

}

export default Map;
