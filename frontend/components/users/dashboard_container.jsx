import { connect } from 'react-redux';
import Dashboard from './dashboard';
import { updateSite } from '../../actions/site_actions';
import { deleteBooking } from '../../actions/booking_actions';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser,
  bookings: store.bookings.bookings,
  guests: store.bookings.guests
});

const mapDispatchToProps = (dispatch) => ({
  updateSite: (id, newInfo) => dispatch(updateSite(id, newInfo)),
  deleteBooking: (id) => dispatch(deleteBooking(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(Dashboard);
