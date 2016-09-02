import React from 'react';
import { hashHistory } from 'react-router';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.acceptGuests = this.acceptGuests.bind(this);
  }

  componentDidUpdate() {
    if (!this.props.currentUser) {
      hashHistory.push("/");
    }
  }

  acceptGuests() {
    let newInfo;
    if (this.props.currentUser.site.accepting_guests) {
      newInfo = {accepting_guests: false}
    } else {
      newInfo = {accepting_guests: true}
    }
    this.props.updateSite(this.props.currentUser.site.id, newInfo)
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
    return (
      <div>
        <main className="container">
          <div className="vertical-container">
            <aside className="dashboard-user">
              <section className="dashboard-user-info">
                <h3>{this.props.currentUser.firstname} {this.props.currentUser.lastname}</h3>
                <h4>{this.props.currentUser.site.city}</h4>
                <h4>{year}</h4>
                <p>{this.props.currentUser.site.accepting_guests ? "Currently accepting guests" : "Not accepting guests"}</p>
              </section>
              <section className="dashboard-user-button">
                <button className="dashboard-button" onClick={this.acceptGuests} >{this.props.currentUser.site.accepting_guests ? "Stop accepting guests" : "Accept guests"}</button>
                <a href="/#/edit_profile"><button className="dashboard-button">Edit Profile</button></a>
              </section>
            </aside>
            <section className="dashboard-main">
              <article className="cool-eras-main" >
                <h3>Visit any era in history</h3>
                <section className="cool-eras">
                  <figure className="cool-era antiquity">
                    <figcaption className="era-caption">Antiquity</figcaption>
                  </figure>
                  <figure className="cool-era midage">
                    <figcaption className="era-caption">The Middle Ages</figcaption>
                  </figure>
                  <figure className="cool-era postapoc">
                    <figcaption className="era-caption">Post-Apocalypse</figcaption>
                  </figure>
                </section>
              </article>
              <article className="dashboard-section-main">
                <section className="dashboard-section-heading">
                  <h4>
                    <i className="material-icons">hourglass_empty</i>My Bookings
                  </h4>
                </section>
                Bookings go here
              </article>
              <article className="dashboard-section-main">
                <section className="dashboard-section-heading">
                  <h4>
                    <i className="material-icons">all_inclusive</i> My Guests
                  </h4>
                </section>
                Guests go here
              </article>
            </section>
          </div>
        </main>
      </div>
    );
  }
}

export default Dashboard;
