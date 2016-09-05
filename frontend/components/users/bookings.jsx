import React from 'react';
import Booking from './booking';

const Bookings = ({bookings, deleteBooking}) => {
  let bookingEls = bookings.map((booking) => (
    <Booking key={"booking" + booking.id} booking={booking} deleteBooking={deleteBooking}/>
  ));
  return (
    <section className="bookings">
      {bookingEls}
    </section>
  );
}

export default Bookings;
