import { connect } from 'react-redux';
import Navbar from './navbar';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(Navbar);
