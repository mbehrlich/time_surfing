import React from 'react';

const About = ({user}) => (
  <div className="inner-info">
    <p className="data-point"><strong>Name:</strong> {user.firstname} {user.lastname}</p>
    <p className="data-point"><strong>Gender:</strong> {user.gender}</p>
    <p className="data-point"><strong>Birthday:</strong> {user.birthdate}</p>
    <p className="about-me">{user.description}</p>
  </div>
);

export default About;
