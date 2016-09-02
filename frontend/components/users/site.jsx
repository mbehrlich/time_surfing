import React from 'react';

class Site extends React.Component {
  constructor(props) {
    super(props);
  }



  render() {
    let preferred_gender;
    if (this.props.user.site.preferred_gender === "M") {
      preferred_gender = "Male";
    } else if (this.props.user.site.preferred_gender === "F") {
      preferred_gender = "Female";
    } else {
      preferred_gender = "none";
    }
    return (
      <div className="inner-info">
        <p className="data-point"><strong>Address:</strong> {this.props.user.site.address}</p>
        <p className="data-point"><strong>Latitude:</strong> {this.props.user.site.lat}</p>
        <p className="data-point"><strong>Longitude:</strong> {this.props.user.site.lng}</p>
        <p className="data-point"><strong>Accepting Guests:</strong> {this.props.user.site.start_date}-{this.props.user.site.end_date}</p>
        <p className="data-point"><strong>Max Guests:</strong> {this.props.user.site.max_guests}</p>
        <p className="data-point"><strong>Preferred Gender:</strong> {preferred_gender}</p>
        <p className="data-point"><strong>Kid Friendly? </strong> {this.props.user.site.kid_friendly ? "Yes" : "No"}</p>
        <p className="data-point"><strong>Pet Friendly? </strong> {this.props.user.site.pet_friendly ? "Yes" : "No"}</p>


        <p className="about-me">{this.props.user.site.description}</p>
      </div>
    );
  }

}

export default Site;
