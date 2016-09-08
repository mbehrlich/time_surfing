import React from 'react';
import { hashHistory } from 'react-router';
import Bookings from './bookings';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.acceptGuests = this.acceptGuests.bind(this);
    this.updateEra = this.updateEra.bind(this);
    this.state = {
      lat: this.props.spacetime.lat,
      lng: this.props.spacetime.lng,
      location: "",
      start_date: this.props.spacetime.start_date,
      end_date: this.props.spacetime.end_date,
      era: this.props.spacetime.era
    };
  }

  componentDidUpdate() {
    if (!this.props.currentUser) {
      hashHistory.push("/");
    }
  }

  acceptGuests() {
    let newInfo;
    if (this.props.currentUser.site.accepting_guests) {
      newInfo = {accepting_guests: false};
    } else {
      newInfo = {accepting_guests: true};
    }
    this.props.updateSite(this.props.currentUser.site.id, newInfo);
  }

  updateEra(e) {
    let name = e.currentTarget.getAttribute("name");
    let value = name || e.target.value
    let eraMapping = {
      All_Time: ["-2000-01-01", "3000-12-31"],
      Antiquity: ["-2000-01-01", "0450-12-31"],
      Middle_Ages: ["0451-01-01", "1400-12-31"],
      Renaissance: ["1401-01-01", "1700-12-31"],
      Enlightenment: ["1701-01-01", "1860-12-31"],
      Modern_Era: ["1861-01-01", "2017-12-31"],
      Space_Age: ["2018-01-01", "2430-12-31"],
      Post_Apocalypse: ["2431-01-01", "3000-12-31"]
    }
    let newSpacetime = {
      era: value,
      start_date: eraMapping[value][0],
      end_date: eraMapping[value][1]
    };
    this.setState(newSpacetime, () => {
      this.props.updateSpacetime(this.state)
      if (name) {
        hashHistory.push("/location_search");
      }
    });
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
                <select className="era-select" value={this.state.era} onChange={this.updateEra}>
                  <option value="All_Time" >All Time</option>
                  <option value="Antiquity" >Antiquity</option>
                  <option value="Middle_Ages" >Middle Ages</option>
                  <option value="Renaissance" >Renaissance</option>
                  <option value="Enlightenment">Enlightenment</option>
                  <option value="Modern_Era" >Modern Era</option>
                  <option value="Space_Age" >Space Age</option>
                  <option value="Post_Apocalypse" >Post-Apocalypse</option>
                </select>
                <section className="cool-eras">
                  <figure className="cool-era antiquity" name="Antiquity" onClick={this.updateEra}>
                    <figcaption className="era-caption">Antiquity</figcaption>
                  </figure>
                  <figure name="Middle_Ages" className="cool-era midage" onClick={this.updateEra}>
                    <figcaption className="era-caption">The Middle Ages</figcaption>
                  </figure>
                  <figure name="Post_Apocalypse" className="cool-era postapoc" onClick={this.updateEra}>
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
                <Bookings bookings={this.props.bookings} deleteBooking={this.props.deleteBooking} />
              </article>
              <article className="dashboard-section-main">
                <section className="dashboard-section-heading">
                  <h4>
                    <i className="material-icons">all_inclusive</i> My Guests
                  </h4>
                </section>
                <Bookings bookings={this.props.guests} deleteBooking={this.props.deleteBooking} />
              </article>
            </section>
          </div>
        </main>
      </div>
    );
  }
}

export default Dashboard;
