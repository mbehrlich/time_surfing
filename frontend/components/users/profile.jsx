import React from 'react';

class Profile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (!this.props.user) {
      console.log(this.props.errors);
      if (this.props.errors.length > 0) {
        let errors = this.props.errors.map((error, idx) => (
          <li key={idx}>{error}</li>
        ));
        return (
          <div>
            <div className="overlay"></div>
            <div className="errors">
              <ul>
                {errors}
              </ul>
            </div>
          </div>
        );
      } else {
        return (
          <div>
            <div className="overlay"></div>
            <div className="loading">Threading Multiverse...</div>
          </div>
        );
      }
    }
    let profilePic = ( this.props.user.profile ? this.props.user.profile : "assets/profile_default.png");
    return (
      <div>
        <main className="container">
          <aside className="profile-pic">
            <img src={profilePic} />
          </aside>
          <section className="main-profile">
            <article className="profile-header">
              <h1>{this.props.user.username}</h1>
              <h3>Location</h3>
              <h3>Year</h3>
            </article>
            <article className="profile-buttons">
              <h3>Accepting Guests?</h3>
              <ul className="profile-buttons-list">
                <li><button className="profile-button">Send Request</button></li>
                <li><button className="profile-button">Write Reference</button></li>
              </ul>
            </article>
            <article className="profile-info">
              <nav className="profile-navbar"></nav>
              <section className="profile-info-section">
                Children go here
              </section>
            </article>
          </section>
        </main>
      </div>
    );
  }

}

export default Profile;
