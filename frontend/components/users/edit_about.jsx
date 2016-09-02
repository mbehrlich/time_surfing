import React from 'react';

class EditAbout extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstname: this.props.currentUser.firstname,
      lastname: this.props.currentUser.lastname,
      password: "",
      gender: this.props.currentUser.gender,
      birthdate: this.props.currentUser.birthdate,
      description: this.props.currentUser.description
    };
    this.updateField = this.updateField.bind(this);
    this.updateGender = this.updateGender.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  updateField(event) {
    let updates = {};
    let key = event.target.name;
    updates[key] = event.target.value;
    this.setState(updates);
  }

  updateGender(event) {
    if (event.target.checked) {
      this.setState({gender: event.target.value});
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    let newInfo = this.state
    if (!newInfo.password) {
      delete newInfo.password;
    }
    this.props.updateUser(this.props.currentUser.id, newInfo);
  }

  render() {
    return (
      <div className="inner-info">
        <form className="update-form">
          <label>
            First name:
            <input type="text" name="firstname" value={this.state.firstname} onChange={this.updateField} />
          </label>
          <label>
            Last name:
            <input type="text" name="lastname" value={this.state.lastname} onChange={this.updateField} />
          </label>
          <label>
            Password:
            <input type="password" name="password" value={this.state.password} onChange={this.updateField} />
          </label>
          <label>Gender</label>
          <label className="gender-label">
            Male <input name="gender" type="radio" value="M" checked={this.state.gender === "M" ? true : false} onChange={this.updateGender} />
          </label>
          <label className="gender-label">
            Female <input name="gender" type="radio" value="F" checked={this.state.gender === "F" ? true : false} onChange={this.updateGender} />
          </label>
          <label className="gender-label">
            Other <input name="gender" type="radio" value="O" checked={this.state.gender === "O" ? true : false} onChange={this.updateGender} />
          </label>
          <label>
            Birthdate:
            <input type="date" name="birthdate" value={this.state.birthdate} onChange={this.updateField} />
          </label>
          <label>
            About me:
            <textarea name="description" value={this.state.description} onChange={this.updateField} />
          </label>
          <button className="update-button" onClick={this.handleSubmit} >Save</button>
        </form>
      </div>
    );
  }

}

export default EditAbout;
