import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import NavbarContainer from './navbar_container';
import SplashContainer from './splash_container';
import LoginContainer from './auth/login_container';
import JoinContainer from './auth/join_container';
import Footer from './footer';
import ProfileContainer from './users/profile_container';
import { requestUser } from '../actions/user_actions';
import AboutContainer from './users/about_container';
import DashboardContainer from './users/dashboard_container';
import SiteContainer from './users/site_container';
import EditProfileContainer from './users/edit_profile_container';
import EditAboutContainer from './users/edit_about_container';
import EditSiteContainer from './users/edit_site_container';

class Root extends React.Component {
  constructor(props) {
    super(props)
    this.ensureNotLogin = this.ensureNotLogin.bind(this);
    this.getProfile = this.getProfile.bind(this);
    this.ensureLogin = this.ensureLogin.bind(this);
  }

  ensureNotLogin(nextState, replace) {
    if (this.props.store.getState().session.currentUser) {
      replace('/dashboard');
    }
  }

  getProfile(nextState, replace) {
    this.props.store.dispatch(requestUser(nextState.params.id));
  }

  ensureLogin(nextState, replace) {
    if (!this.props.store.getState().session.currentUser) {
      replace('/');
    }
  }

  render() {
    return (
      <Provider store={this.props.store}>
        <div>
          <NavbarContainer />
          <Router history={ hashHistory }>
            <Route path="/" component={SplashContainer} onEnter={this.ensureNotLogin} >
              <Route path="/login" component={LoginContainer} onEnter={this.ensureNotLogin} />
              <Route path="/join" component={JoinContainer} onEnter={this.ensureNotLogin} />
            </Route>
            <Route path="/dashboard" component={DashboardContainer} onEnter={this.ensureLogin} />
            <Route path="/edit_profile" component={EditProfileContainer} onEnter={this.ensureLogin} >
              <IndexRoute component={EditAboutContainer} />
              <Route path="/edit_profile/site" component={EditSiteContainer} />
            </Route>
            <Route path="/users/:id" component={ProfileContainer} onEnter={this.getProfile}>
              <IndexRoute component={AboutContainer} />
              <Route path="/users/:id/site" component={SiteContainer} />
            </Route>
          </Router>
          <Footer />
        </div>
      </Provider>
    );
  }
}



export default Root;
