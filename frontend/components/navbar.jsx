import React from 'react';

const Navbar = ({currentUser}) => {
  let logged_in = (currentUser ? true : false);
  let navButtons;
  if (logged_in) {
    navButtons = (
      <ul className="nav-buttons">
        <li>Option 1</li>
      </ul>
    );
  } else {
    navButtons = (
      <ul className="nav-buttons">
        <li><button>Join</button></li>
        <li><button>Log in</button></li>
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

export default Navbar;
