import { updateSpacetime } from '../actions/spacetime_actions';
import { connect } from 'react-redux';
import Splash from './splash';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser,
  spacetime: store.spacetime
});

const mapDispatchToProps = (dispatch) => ({
  updateSpacetime: (spacetime) => dispatch(updateSpacetime(spacetime))
});

export default connect(mapStateToProps, mapDispatchToProps)(Splash);
