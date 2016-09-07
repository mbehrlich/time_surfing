import React from 'react';
import { withRouter, hashHistory } from 'react-router';

class Navbar extends React.Component {

  constructor(props) {
    super(props);
    this.iconClick = this.iconClick.bind(this);
    this.state = {
      lat: this.props.spacetime.lat,
      lng: this.props.spacetime.lng,
      location: "",
      start_date: this.props.spacetime.start_date,
      end_date: this.props.spacetime.end_date,
      era: this.props.spacetime.era,
      menu: false
    };
    this.search = this.search.bind(this);
    this.updateSearch = this.updateSearch.bind(this);
  }

  iconClick(e) {
    let removeClick = () => {
      if (this.state.menu === true) {
        this.setState({menu: false});
      }
      document.removeEventListener("click", removeClick);
    };
    e.preventDefault();
    if (this.state.menu === false) {
      this.setState({menu: true});
      document.addEventListener("click", removeClick);
    } else {
      removeClick();
    }
  }


  componentDidMount() {
    this.input = document.getElementById('nav-search')
    let options = {types: ['(cities)']};
    this.autocomplete = new google.maps.places.Autocomplete(this.input, options);
    this.autocomplete.addListener('place_changed', this.search);
  }

  search() {
    let place = this.autocomplete.getPlace();
    if (place.geometry) {
      this.setState({
        // location: place.query,
        lat: place.geometry.location.lat(),
        lng: place.geometry.location.lng(),
        location: ""
      });
      this.props.updateSpacetime(this.state);
      hashHistory.push("/location_search");
    } else {
      let service = new google.maps.places.AutocompleteService();
      let placeService = new google.maps.places.PlacesService(this.input);
      let placeRequest = (predictions, status) => {
        let request = { placeId: predictions[0].place_id };
        placeService.getDetails(request, (details) => {
          this.setState({
            lat: details.geometry.location.lat(),
            lng: details.geometry.location.lng(),
            location: ""
          });
          this.props.updateSpacetime(this.state);
          hashHistory.push("/location_search");
        });
      };
      service.getQueryPredictions({input: this.input.value}, placeRequest);
    }
  }

  updateSearch(e) {
    this.setState({location: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();

  }


  render() {
    let logged_in = (this.props.currentUser ? true : false);
    let navButtons;
    let navbarDropdown = (this.state.menu ? "navbar-dropdown popup" : "navbar-dropdown not-popup");
    if (logged_in) {
      let profilePic = (this.props.currentUser.profile ? this.props.currentUser.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png");
      navButtons = (
        <ul className="nav-buttons">
          <li><button onClick={this.props.logoutUser} >Log out</button></li>
          <li>
            <a className="user-icon" href="#" onClick={this.iconClick}>
              <img src={profilePic} alt={this.props.currentUser.username} />
              <i className="material-icons md-18 arrow">expand_more</i>
            </a>
            <ul id="menu" className={navbarDropdown} >
              <li><a href="/#/dashboard">Dashboard</a></li>
              <li><a href={"/#/users/" + this.props.currentUser.id}>My Profile</a></li>
              <li><a href="/#/edit_profile">Edit Profile</a></li>

            </ul>
          </li>
        </ul>
      );
    } else {
      navButtons = (
        <ul className="nav-buttons">
          <li><a href="/#/join"><button>Join</button></a></li>
          <li><a href="/#/login"><button>Log in</button></a></li>
          <li><button onClick={this.props.loginUser}>Guest</button></li>
        </ul>
      );
    }
    return (
      <section className="nav-container">
        <nav className="navbar">
          <div className="logo"><a href="/#/"><i className="material-icons logo-icon">hourglass_empty</i> Timesurfing</a></div>
          <form className="nav-search" onSubmit={this.handleSubmit} >
            <input type="text" id="nav-search" placeholder="Where do you want to go?" value={this.state.location} onChange={this.updateSearch} />
          </form>
          {navButtons}
        </nav>
      </section>
    );
  }
}

export default withRouter(Navbar);
