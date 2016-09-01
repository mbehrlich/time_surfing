import { connect } from 'react-redux';
import Profile from './profile';

const mapStateToProps = (store) => ({
  user: store.user.user,
  errors: store.user.errors,
  currentUser: store.session.currentUser,
  loggedIn: (store.session.currentUser ? true : false)
});

const mapDispatchToProps = () => ({});

export default connect(mapStateToProps, null)(Profile);
