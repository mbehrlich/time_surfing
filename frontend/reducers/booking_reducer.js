import { BOOKING_CONSTANTS } from '../actions/booking_actions';
import { merge } from 'lodash';

let defaultState = {bookings: [], guests: [], errors: [], received: false}

const BookingReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case BOOKING_CONSTANTS.RECEIVE_BOOKINGS:
      newState = {bookings: action.bookings.bookings, guests: action.bookings.guests, errors: []};
      newState.received = false;
      return newState;
    case BOOKING_CONSTANTS.RECEIVE_BOOKING:
      newState = merge({}, state);
      newState.bookings.push(action.booking);
      newState.received = true;
      return newState;
    case BOOKING_CONSTANTS.RECEIVE_BOOKING_ERRORS:
      newState = merge({}, state);
      console.log(action.errors);
      newState.errors = action.errors;
      newState.received = false;
      return newState;
    default:
      return state;
  }
};

export default BookingReducer;
