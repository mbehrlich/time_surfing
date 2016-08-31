import React from 'react';
import { hashHistory, withRouter } from 'react-router';

class Join extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstname: "",
      lastname: "",
      username: "",
      password: ""
    };
    this.updateField = this.updateField.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    document.getElementById("first-field").focus();
  }

  componentDidUpdate() {
    if (this.props.loggedIn){
      hashHistory.push("/");
    }
  }

  updateField(event) {
    let updates = {};
    let key = event.target.name;
    updates[key] = event.target.value;
    this.setState(updates);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createUser(this.state);
  }

  render() {
    let errors = this.props.errors.map((error, idx) => (
      <li key={idx}><i className="material-icons">warning</i> {error}</li>
    ));
    return (
      <div>
        <div className="overlay"></div>
        <section className="auth-form">
          <a href="/#/"><button className="cancel">
            <i className="material-icons">clear</i>
          </button></a>
          <div className="errors">
            <ul>
              {errors}
            </ul>
          </div>
          <h3>Join Timesurfing for free</h3>
          <form className="auth" onSubmit={this.handleSubmit}>
            <label>
              First name:
              <input type="text" id="first-field" name="firstname" onChange={this.updateField} />
            </label>
            <label>
              Last name:
              <input type="text" name="lastname" onChange={this.updateField} />
            </label>
            <label>
              Username:
              <input type="text" name="username" onChange={this.updateField} />
            </label>
            <label>
              Password:
              <input type="password" name="password" onChange={this.updateField} />
            </label>
            <button className="auth-button">Join</button>
          </form>
          <button className="auth-button" onClick={this.props.loginUser}>Guest Login</button>
        </section>
      </div>
    );
  }

}

export default withRouter(Join);
