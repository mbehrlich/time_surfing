import React from 'react';
import { withRouter } from 'react-router';

const Navbar = ({currentUser, logoutUser }) => {
  let logged_in = (currentUser ? true : false);
  let navButtons;
  if (logged_in) {
    navButtons = (
      <ul className="nav-buttons">
        <li><button onClick={logoutUser} >Log out</button></li>
        <li>{currentUser.username}</li>
      </ul>
    );
  } else {
    navButtons = (
      <ul className="nav-buttons">
        <li><a href="/#/join"><button>Join</button></a></li>
        <li><a href="/#/login"><button>Log in</button></a></li>
        <li><button>Guest</button></li>
      </ul>
    );
  }
  return (
    <section className="nav-container">
      <nav className="navbar">
        <div className="logo"><a href="/#/">Timesurfing</a></div>
        {navButtons}
      </nav>
    </section>
  );
};

export default withRouter(Navbar);
