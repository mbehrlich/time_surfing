import React from 'react';

class About extends React.Component {
  constructor(props) {
    super(props);
  }



  render() {
    return (
      <div className="inner-info">
        <p className="data-point"><strong>Name:</strong> {this.props.user.firstname} {this.props.user.lastname}</p>
        <p className="data-point"><strong>Gender:</strong> {this.props.user.gender}</p>
        <p className="data-point"><strong>Age:</strong> {this.props.age}</p>
        <p className="data-point"><strong>Birthday:</strong> {this.props.user.birthdate}</p>
        <p className="about-me">{this.props.user.description}</p>
      </div>
    );
  }

}

export default About;
