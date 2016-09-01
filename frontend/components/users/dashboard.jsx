import React from 'react';
import { hashHistory } from 'react-router';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidUpdate() {
    if (!this.props.currentUser) {
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
    return (
      <div>
        <main className="container">
          <div className="vertical-container">
            <aside className="dashboard-user">
              <section className="dashboard-user-info">
                <h3>{this.props.currentUser.firstname} {this.props.currentUser.lastname}</h3>
                <h4>Location</h4>
                <h4>Year</h4>
                <p>Currently accepting guests?</p>
              </section>
              <section className="dashboard-user-button">
                <button className="dashboard-button">Accept Guests</button>
              </section>
            </aside>
            <section className="dashboard-main">
              <article className="advertisements-main" >
                <h3>Visit any era in history</h3>
                <section className="advertisements">
                  <figure className="advertisement">
                    <figcaption className="adcopy">The Renaissance</figcaption>
                  </figure>
                  <figure className="advertisement2">
                    <figcaption className="adcopy">The Middle Ages</figcaption>
                  </figure>
                  <figure className="advertisement3">
                    <figcaption className="adcopy">Post-Apocalypse</figcaption>
                  </figure>
                </section>
              </article>
              <article className="dashboard-section-main">
                <section className="dashboard-section-heading">
                  <h4>
                    <i className="material-icons">hourglass_empty</i>
                    My Bookings
                  </h4>
                </section>
                Bookings go here
              </article>
              <article className="dashboard-section-main">
                <section className="dashboard-section-heading">
                  <h4>
                    <i className="material-icons">all_inclusive</i>
                    My Guests
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
