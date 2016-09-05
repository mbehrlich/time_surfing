import React from 'react';

class SearchForm extends React.Component {
  constructor(props) {
    super(props);
    let from = this.props.spacetime.start_date;
    let to = this.props.spacetime.end_date;
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
    this.state={
      from,
      fromEpoch,
      to,
      toEpoch
    }
    this.updateDates = this.updateDates.bind(this);
    this.finalUpdate = this.finalUpdate.bind(this);
    this.updateEpoch = this.updateEpoch.bind(this);
  }

  componentDidMount() {
    let from = document.getElementById("from");
    let to = document.getElementById("to");
    from.addEventListener("blur", this.finalUpdate);
    to.addEventListener("blur", this.finalUpdate);
  }

  finalUpdate(e) {
    e.preventDefault();
    if (this.state.from && this.state.to) {
      let from = this.state.from;
      let to = this.state.to;
      if (this.state.fromEpoch === "BC") {
        from = "-" + from;
      }
      if (this.state.toEpoch === "BC") {
        to = "-" + to;
      }

      this.props.updateDates(from, to);
    }
  }

  updateDates(e) {
    let updates = {};
    if (e.target) {
      let key = e.target.name;
      updates[key] = e.target.value;
      this.setState(updates);
    }
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
    return (
      <div className="search-form">
        <h3>Search</h3>
        <form className="date-search">
          <section className="date-section">
            <label>
              From:
              <input className="date-search-input" id="from" type="date" name="from" value={this.state.from} onChange={this.updateDates} />
            </label>
            <section className="epoch">
              <label>
                BC
                <input type="radio" name="fromEpoch" value="BC" onChange={this.updateEpoch} checked={this.state.fromEpoch === "BC" ? true : false} />
              </label>
              <label>
                AD
                <input type="radio" name="fromEpoch" value="AD" onChange={this.updateEpoch} checked={this.state.fromEpoch === "AD" ? true : false} />
              </label>
            </section>
          </section>
          <section className="date-section">
            <label>
              To:
              <input className="date-search-input" id="to" type="date" name="to" value={this.state.to} onChange={this.updateDates} />
            </label>
            <section className="epoch">
              <label>
                BC
                <input type="radio" name="toEpoch" value="BC" onChange={this.updateEpoch} checked={this.state.toEpoch === "BC" ? true : false} />
              </label>
              <label>
                AD
                <input type="radio" name="toEpoch" value="AD" onChange={this.updateEpoch} checked={this.state.toEpoch === "AD" ? true : false} />
              </label>
            </section>
          </section>
          <button onClick={this.finalUpdate}>Search</button>
        </form>
      </div>
    );
  }

}

export default SearchForm;
