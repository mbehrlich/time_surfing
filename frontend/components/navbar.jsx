import React from 'react';
import { withRouter, hashHistory } from 'react-router';

class Navbar extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      lat: this.props.spacetime.lat,
      lng: this.props.spacetime.lng,
      location: "",
      start_date: this.props.spacetime.start_date,
      end_date: this.props.spacetime.end_date,
      era: this.props.spacetime.era,
      menu: false,
      rmenu: false,
      smenu: false
    };
    this.initial = this.state;
    this.search = this.search.bind(this);
    this.updateSearch = this.updateSearch.bind(this);
    this.iconClick = this.iconClick.bind(this);
    this.resClick = this.resClick.bind(this);
    this.searchClick = this.searchClick.bind(this);
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

  resClick(e) {
    let removeClick = () => {
      if (this.state.rmenu === true) {
        this.setState({rmenu: false, menu: false});
      }
      document.removeEventListener("click", removeClick);
    };
    e.preventDefault();
    if (this.state.rmenu === false) {
      this.setState({rmenu: true, menu: true});

      document.addEventListener("click", removeClick);
    } else {
      removeClick();
    }

  }

  searchClick(e) {
    let removeClick = () => {
      if (this.state.smenu === true) {
        this.setState({smenu: false});
      }
      document.removeEventListener("click", removeClick);
    };
    e.preventDefault();
    if (this.state.smenu === false) {
      this.setState({smenu: true}, () => document.getElementById("nav-search").focus());
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
        location: "",
        era: this.props.spacetime.era,
        start_date: this.props.spacetime.start_date,
        end_date: this.props.spacetime.end_date
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
            location: "",
            era: this.props.spacetime.era
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
    let style;
    if (this.props.spacetime.era === "All_Time") {
      style = (<div></div>);
    } else if (this.props.spacetime.era === "Antiquity") {
      style = (<link href="eras/antiquity.css" rel="stylesheet" type="text/css" />);
    } else if (this.props.spacetime.era === "Middle_Ages") {
      style = (<link href="eras/middle_ages.css" rel="stylesheet" type="text/css" />);
    } else if (this.props.spacetime.era === "Renaissance") {
      style = (<link href="eras/renaissance.css" rel="stylesheet" type="text/css" />);
    } else if (this.props.spacetime.era === "Enlightenment") {
      style = (<link href="eras/enlightenment.css" rel="stylesheet" type="text/css" />);
    } else if (this.props.spacetime.era === "Modern_Era") {
      style = (<link href="eras/modern_era.css" rel="stylesheet" type="text/css" />);
    } else if (this.props.spacetime.era === "Space_Age") {
      style = (<link href="eras/space_age.css" rel="stylesheet" type="text/css" />);
    } else if (this.props.spacetime.era === "Post_Apocalypse") {
      style = (<link href="eras/post_apocalypse.css" rel="stylesheet" type="text/css" />);
    }
    let logged_in = (this.props.currentUser ? true : false);
    let navButtons;
    let navbarDropdown = (this.state.menu ? "navbar-dropdown popup" : "navbar-dropdown not-popup");
    let respDropdown = (this.state.rmenu ? "nav-buttons-resp" : "nav-buttons");
    let searchDropdown = (this.state.smenu ? "nav-search-resp" : "nav-search");
    if (logged_in) {
      let profilePic = (this.props.currentUser.profile ? this.props.currentUser.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png");
      navButtons = (
        <ul className={respDropdown}>
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
        <ul className={respDropdown}>
          <li><a href="/#/join"><button>Join</button></a></li>
          <li><a href="/#/login"><button>Log in</button></a></li>
          <li><button onClick={this.props.loginUser}>Guest</button></li>
        </ul>
      );
    }
    return (
      <section className="nav-container">
        {style}
        <nav className="navbar">
          <div className="logo"><a href="/#/"><i className="material-icons logo-icon">hourglass_empty</i> Timesurfing</a></div>
          <button className="nav-icon search-icon" onClick={this.searchClick}><i className="material-icons">search</i></button>
          <form className={searchDropdown} onSubmit={this.handleSubmit} >
            <input type="text" id="nav-search" placeholder="Where do you want to go?" value={this.state.location} onChange={this.updateSearch} />
          </form>
          <button className="nav-icon" onClick={this.resClick}>
            <i className="material-icons">menu</i>
          </button>
          {navButtons}
        </nav>
      </section>
    );
  }
}

export default withRouter(Navbar);
