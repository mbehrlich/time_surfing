import { connect } from 'react-redux';
import Dashboard from './dashboard';
import { updateSite } from '../../actions/site_actions';
import { deleteBooking } from '../../actions/booking_actions';
import { updateSpacetime } from '../../actions/spacetime_actions';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser,
  bookings: store.bookings.bookings,
  guests: store.bookings.guests,
  spacetime: store.spacetime
});

const mapDispatchToProps = (dispatch) => ({
  updateSite: (id, newInfo) => dispatch(updateSite(id, newInfo)),
  deleteBooking: (id) => dispatch(deleteBooking(id)),
  updateSpacetime: (spacetime) => dispatch(updateSpacetime(spacetime))
});

export default connect(mapStateToProps, mapDispatchToProps)(Dashboard);
