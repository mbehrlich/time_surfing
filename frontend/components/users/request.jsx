import React from 'react';
import { hashHistory } from 'react-router';

class Request extends React.Component {
  constructor(props) {
    super(props);
    let from = this.props.user.site.start_date;
    let to = this.props.user.site.end_date;
    let fromEpoch = "AD";
    let toEpoch = "AD";
    if (from[0] === "-") {
      from = from.slice(1);
      fromEpoch = "BC";
    }
    if (to[0] === "-") {
      to = to.slice(1);
      toEpoch = "BC";
    }
    this.state = {
      start_date: from,
      end_date: to,
      start_epoch: fromEpoch,
      end_epoch: toEpoch,
      guests: ""

    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateField = this.updateField.bind(this);
    this.updateEpoch = this.updateEpoch.bind(this);
  }

  componentDidMount() {
    document.getElementById("first-field").focus();
  }

  componentDidUpdate() {
    if (this.props.received) {
      hashHistory.push("/dashboard");
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    let from;
    let to;
    if (this.state.start_date && this.state.end_date) {
      from = this.state.start_date;
      to = this.state.end_date;
      if (this.state.start_epoch === "BC") {
        from = "-" + from;
      }
      if (this.state.end_epoch === "BC") {
        to = "-" + to;
      }

    }

    let updates = {
      start_date: from,
      end_date: to,
      guests: this.state.guests,
      site_id: this.props.user.site.id
    }
    this.props.createBooking(updates);
  }

  updateField(event) {
    let updates = {};
    let key = event.target.name;
    updates[key] = event.target.value;
    this.setState(updates);
  }

  updateEpoch(e) {
    let updates = {};
    let key = e.target.name;
    if (e.target.checked) {
      updates[key] = e.target.value;
      this.setState(updates);
    }
  }

  render() {
    let errors = this.props.errors.map((error, idx) => (
      <li key={idx}><i className="material-icons">warning</i> {error}</li>
    ));
    return (
      <div>
        <div className="overlay"></div>
        <section className="request-form">
          <a href={"/#/users/" + this.props.user.id}><button className="cancel">
            <i className="material-icons">clear</i>
          </button></a>
          <div className="errors">
            <ul>
              {errors}
            </ul>
          </div>
          <h3>Request Booking</h3>
          <form className="request" onSubmit={this.handleSubmit}>
            <label className="request-label">
              Start date:
              <input className="request-input" type="date" id="first-field" name="start_date" value={this.state.start_date} onChange={this.updateField} />
            </label>
            <section className="request-epoch">
              <label>
                BC
                <input type="radio" name="start_epoch" value="BC" onChange={this.updateEpoch} checked={this.state.start_epoch === "BC" ? true : false} />
              </label>
              <label>
                AD
                <input type="radio" name="start_epoch" value="AD" onChange={this.updateEpoch} checked={this.state.start_epoch === "AD" ? true : false} />
              </label>
            </section>
            <label className="request-label">
              End date:
              <input className="request-input" type="date" name="end_date" value={this.state.end_date} onChange={this.updateField} />
            </label>
            <section className="request-epoch">
              <label>
                BC
                <input type="radio" name="end_epoch" value="BC" onChange={this.updateEpoch} checked={this.state.end_epoch === "BC" ? true : false} />
              </label>
              <label >
                AD
                <input type="radio" name="end_epoch" value="AD" onChange={this.updateEpoch} checked={this.state.end_epoch === "AD" ? true : false} />
              </label>
            </section>
            <label className="request-label">
              # of Guests:
              <input className="request-input" type="number" name="guests" value={this.state.guests} onChange={this.updateField} />
            </label>
            <button className="request-button">Request</button>
          </form>
        </section>
      </div>
    );
  }
}

export default Request;
