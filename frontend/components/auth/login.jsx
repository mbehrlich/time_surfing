import React from 'react';
import { hashHistory } from 'react-router';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
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
      hashHistory.push("/")
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
    this.props.loginUser(this.state);
  }

  render() {
    let errors = this.props.errors.map((error) => (
      <li>{error}</li>
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
          <h3>Login to Timesurfing</h3>
          <form className="auth" onSubmit={this.handleSubmit} >
            <label>
              Username:
              <input type="text" id="first-field" name="username" onChange={this.updateField} />
            </label>
            <label>
              Password:
              <input type="password" name="password" onChange={this.updateField} />
            </label>
            <button className="auth-button">Login</button>
          </form>
          <button className="auth-button">Guest Login</button>
        </section>
      </div>
    );
  }

}

export default Login;
