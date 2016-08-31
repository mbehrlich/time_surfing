import React from 'react';
import { withRouter } from 'react-router';

const Navbar = ({currentUser, logoutUser, loginUser }) => {
  let logged_in = (currentUser ? true : false);
  let navButtons;
  if (logged_in) {
    let profilePic = (currentUser.profile ? currentUser.profile : "assets/profile_default.png");
    navButtons = (
      <ul className="nav-buttons">
        <li><button onClick={logoutUser} >Log out</button></li>
        <li>
          <a className="user-icon" href="">
            <img src={profilePic} alt={currentUser.username} />
          </a>
          <ul className="navbar-dropdown">
            <li>option 1</li>
          </ul>
        </li>
      </ul>
    );
  } else {
    navButtons = (
      <ul className="nav-buttons">
        <li><a href="/#/join"><button>Join</button></a></li>
        <li><a href="/#/login"><button>Log in</button></a></li>
        <li><button onClick={loginUser}>Guest</button></li>
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
};

export default withRouter(Navbar);
