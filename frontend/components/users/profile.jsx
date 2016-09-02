import React from 'react';
import { hashHistory } from 'react-router';

class Profile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (!this.props.user) {
      if (this.props.errors.length > 0) {
        let errors = this.props.errors.map((error, idx) => (
          <li key={idx}>{error}</li>
        ));
        return (
          <div>
            <div className="page-errors">
              <ul>
                {errors}
              </ul>
            </div>
          </div>
        );
      } else {
        return (
          <div>
            <div className="overlay"></div>
            <div className="loading">Threading Multiverse...</div>
          </div>
        );
      }
    }
    let buttons;
    if (this.props.loggedIn && this.props.user.site.accepting_guests) {
      buttons = (
        <ul className="profile-buttons-list">
          <li><button className="profile-button">Send Request</button></li>
          <li><button className="profile-button">Write Reference</button></li>
        </ul>
      );
    } else if (this.props.loggedIn) {
      buttons = (
        <ul className="profile-buttons-list">
          <li><button className="profile-button">Write Reference</button></li>
        </ul>
      );
    } else {
      buttons = (<ul className="profile-buttons-list"></ul>)
    }

    let year = null;
    if (this.props.user.site.start_date) {
      year = this.props.user.site.start_date.slice(0, 4);
    }
    let profilePic = ( this.props.user.profile ? this.props.user.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png");
    return (
      <div>
        <main className="container">
          <div className="vertical-container">
            <aside className="profile-pic">
              <img src={profilePic} />
            </aside>
            <section className="main-profile">
              <article className="profile-header">
                <h1>{this.props.user.username}</h1>
                <h3>{this.props.user.site.city}</h3>
                <h3>{year}</h3>
              </article>
              <article className="profile-buttons">
                <h3>{this.props.user.site.accepting_guests ? "Accepting Guests" : "Not Accepting Guests"}</h3>
                {buttons}
              </article>
              <article className="profile-info">
                <nav className="profile-navbar">
                  <ul>
                    <li><a href={"/#/users/" + this.props.user.id} className="profile-navbar-links">about</a></li>
                    <li><a href={"/#/users/" + this.props.user.id + "/site"} className="profile-navbar-links">house</a></li>
                  </ul>
                </nav>
                {this.props.children}
              </article>
            </section>
          </div>
        </main>
      </div>
    );
  }

}

export default Profile;
