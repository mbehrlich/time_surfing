import { connect } from 'react-redux';
import { createBooking } from '../../actions/booking_actions';
import Request from './request';

const mapStateToProps = (state) => ({
  user: state.user.user,
  errors: state.bookings.errors,
  received: state.bookings.received
});

const mapDispatchToProps = (dispatch) => ({
  createBooking: (booking) => dispatch(createBooking(booking))
});

export default connect(mapStateToProps, mapDispatchToProps)(Request);
