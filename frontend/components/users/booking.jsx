import React from 'react';

const Booking = ({booking, deleteBooking}) => (
  <div>
    <img src={booking.user.profile ? booking.user.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png"} />
    <h4>{booking.user.firstname} {booking.user.lastname}</h4>
    <h5>{booking.user.city || booking.user.year}</h5>
    <h5>{booking.start_date} - {booking.end_date}</h5>
  </div>
);

export default Booking;
