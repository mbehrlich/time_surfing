import React from 'react';
import { hashHistory } from 'react-router';

class AddReference extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      recommended: undefined,
      body: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateField = this.updateField.bind(this);
    this.updateRecommend = this.updateRecommend.bind(this);
  }

  componentDidMount() {
    document.getElementById("first-field").focus();
  }

  componentDidUpdate() {
    if (this.props.received) {
      this.props.clearReference();
      hashHistory.push(`/users/${this.props.user.id}`);
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createReference(this.props.user.id, this.state);
  }

  updateField(event) {
    let updates = {};
    let key = event.target.name;
    updates[key] = event.target.value;
    this.setState(updates);
  }

  updateRecommend(e) {
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
        <section className="reference-form">
          <a href={"/#/users/" + this.props.user.id}><button className="cancel">
            <i className="material-icons">clear</i>
          </button></a>
          <div className="errors">
            <ul>
              {errors}
            </ul>
          </div>
          <h3>Add a Reference</h3>
          <form className="reference" onSubmit={this.handleSubmit}>
            <section className="reference-recommend">
              <label>Would you recommend this person?</label>
              <label>
                <input type="radio" name="recommended" value="true" checked={this.state.recommended === "true" ? true : false} onChange={this.updateRecommend}  />
                Yes
              </label>
              <label>
                <input type="radio" name="recommended" value="false" checked={this.state.recommended === "false" ? true : false} onChange={this.updateRecommend} />
                No
              </label>
            </section>
            <label>
              Reference:
              <textarea id="first-field" className="reference-text" name="body" value={this.state.body} onChange={this.updateField} />
            </label>
            <button className="reference-button">Save</button>
          </form>
        </section>
      </div>
    );
  }

}

export default AddReference;
