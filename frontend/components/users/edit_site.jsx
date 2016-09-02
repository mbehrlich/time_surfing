import React from 'react';

class EditSite extends React.Component {
  constructor(props) {
    super(props);
    let siteState = {
      address: (this.props.site.address === null ? "" : this.props.site.address),
      start_date: (this.props.site.start_date === null ? "" : this.props.site.start_date),
      end_date: (this.props.site.end_date === null ? "" : this.props.site.end_date),
      max_guests: (this.props.site.max_guests === null ? "" : this.props.site.max_guests),
      preferred_gender: (this.props.site.preferred_gender === null ? "" : this.props.site.preferred_gender),
      kid_friendly: this.props.site.kid_friendly,
      pet_friendly: this.props.site.pet_friendly,
      description: (this.props.site.description === null ? "" : this.props.site.description),
      city: (this.props.site.city === null ? "" : this.props.site.city)
    };
    this.state = siteState;
    this.updateField = this.updateField.bind(this);
    this.updateGender = this.updateGender.bind(this);
    this.updateFriendly = this.updateFriendly.bind(this);
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
      this.setState({preferred_gender: event.target.value});
    }
  }

  updateFriendly(event) {
    let updates = {};
    let key = event.target.name;
    updates[key] = event.target.checked;
    this.setState(updates);
  }

  handleSubmit(e) {
    e.preventDefault();
    let newInfo = this.state
    this.props.updateSite(this.props.site.id, newInfo);
  }

  render() {
    return (
      <div className="inner-info">
        <form className="update-form">
          <label>
            Address:
            <input type="text" name="address" value={this.state.address} onChange={this.updateField} />
          </label>
          <label>
            City:
            <input type="text" name="city" value={this.state.city} onChange={this.updateField} />
          </label>
          <label>
            Start Date:
            <input type="date" name="start_date" value={this.state.start_date} onChange={this.updateField} />
          </label>
          <label>
            End Date:
            <input type="date" name="end_date" value={this.state.end_date} onChange={this.updateField} />
          </label>
          <label>
            Max Number of Guests:
            <input type="number" name="max_guests" value={this.state.max_guests} onChange={this.updateField} />
          </label>
          <label>Preferred Gender</label>
          <label className="gender-label">
            Male <input name="preferred_gender" type="radio" value="M" checked={this.state.preferred_gender === "M" ? true : false} onChange={this.updateGender} />
          </label>
          <label className="gender-label">
            Female <input name="preferred_gender" type="radio" value="F" checked={this.state.preferred_gender === "F" ? true : false} onChange={this.updateGender} />
          </label>
          <label className="gender-label">
            None <input name="preferred_gender" type="radio" value="N" checked={this.state.preferred_gender === "N" ? true : false} onChange={this.updateGender} />
          </label>
          <label className="friendly-label">
            Kid Friendly?
            <input type="checkbox" name="kid_friendly" checked={this.state.kid_friendly ? true : false} onChange={this.updateFriendly} />
          </label>
          <label className="friendly-label">
            Pet Friendly?
            <input type="checkbox" name="pet_friendly" checked={this.state.pet_friendly ? true : false} onChange={this.updateFriendly} />
          </label>
          <label>
            Description:
            <textarea name="description" value={this.state.description} onChange={this.updateField} />
          </label>
          <button className="update-button" onClick={this.handleSubmit} >Save</button>
        </form>
      </div>
    );
  }

}

export default EditSite;
