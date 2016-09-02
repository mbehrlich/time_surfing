import React from 'react';
import { hashHistory } from 'react-router';

class EditProfile extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidUpdate() {
    if (!this.props.loggedIn) {
      hashHistory.push("/");
    }
  }

  render() {
    if (!this.props.currentUser) {
      return (
        <div>
          <div className="overlay"></div>
          <div className="loading">Threading Multiverse...</div>
        </div>
      );
    }

    let year = null;
    if (this.props.currentUser.site.start_date) {
      year = this.props.currentUser.site.start_date.slice(0, 4);
    }
    let profilePic = ( this.props.currentUser.profile ? this.props.currentUser.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png");
    return (
      <div>
        <main className="container">
          <div className="vertical-container">
            <aside className="profile-pic">
              <img src={profilePic} />
            </aside>
            <section className="main-profile">
              <article className="profile-header">
                <h1>{this.props.currentUser.username}</h1>
                <h3>{this.props.currentUser.site.city}</h3>
                <h3>{year}</h3>
              </article>
              <article className="profile-buttons">
                <h3>{this.props.currentUser.site.accepting_guests ? "Accepting Guests" : "Not Accepting Guests"}</h3>
              </article>
              <article className="profile-info">
                <nav className="profile-navbar">
                  <ul>
                    <li><a href={"/#/users/" + this.props.currentUser.id} className="profile-navbar-links">about</a></li>
                    <li><a href={"/#/users/" + this.props.currentUser.id + "/site"} className="profile-navbar-links">house</a></li>
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

export default EditProfile;
