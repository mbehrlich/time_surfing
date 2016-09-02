import React from 'react';
import { withRouter } from 'react-router';

class Navbar extends React.Component {

  constructor(props) {
    super(props);
    this.iconClick = this.iconClick.bind(this);
    this.state = {menu: false}
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


  render() {
    let logged_in = (this.props.currentUser ? true : false);
    let navButtons;
    let navbarDropdown = (this.state.menu ? "navbar-dropdown popup" : "navbar-dropdown not-popup");
    if (logged_in) {
      let profilePic = (this.props.currentUser.profile ? this.props.currentUser.profile : "assets/profile_default.png");
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
          {navButtons}
        </nav>
      </section>
    );
  }
}

export default withRouter(Navbar);
