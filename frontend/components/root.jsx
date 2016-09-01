import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import NavbarContainer from './navbar_container';
import Splash from './splash';
import LoginContainer from './auth/login_container';
import JoinContainer from './auth/join_container';
import Footer from './footer';
import ProfileContainer from './users/profile_container';
import { requestUser } from '../actions/user_actions';
import AboutContainer from './users/about_container';

class Root extends React.Component {
  constructor(props) {
    super(props)
    this.ensureNotLogin = this.ensureNotLogin.bind(this);
    this.getProfile = this.getProfile.bind(this);
  }

  ensureNotLogin(nextState, replace) {
    if (this.props.store.getState().session.currentUser) {
      replace('/');
    }
  }

  getProfile(nextState, replace) {
    if (!this.props.store.getState().session.currentUser) {
      replace('/');
    } else {
      this.props.store.dispatch(requestUser(nextState.params.id));
    }
  }

  render() {
    return (
      <Provider store={this.props.store}>
        <div>
          <NavbarContainer />
          <Router history={ hashHistory }>
            <Route path="/" component={Splash} >
              <Route path="/login" component={LoginContainer} onEnter={this.ensureNotLogin} />
              <Route path="/join" component={JoinContainer} onEnter={this.ensureNotLogin} />
            </Route>
            <Route path="/users/:id" component={ProfileContainer} onEnter={this.getProfile}>
              <IndexRoute component={AboutContainer} />
            </Route>
          </Router>
          <Footer />
        </div>
      </Provider>
    );
  }
}



export default Root;
