import React from 'react';
import { hashHistory } from 'react-router';

class EditProfile extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: undefined
    }
    this.updateProfilePic = this.updateProfilePic.bind(this);
  }

  updateProfilePic() {
    cloudinary.openUploadWidget(window.cloudinaryOptions, (error, images) => {
      if (error) {
        console.log(error.message);
        // this.setState({error: error.message});
      } else if (images.length > 1) {
        this.setState({error: "You can only upload one profile image"});
      } else if (images.length === 0) {
        this.setState({error: "No image selected"})
      } else {
        this.props.updateUser(this.props.currentUser.id, { profile: images[0].url });
      }
    });
  }

  componentDidUpdate() {
    if (!this.props.loggedIn) {
      hashHistory.push("/");
    }
  }

  render() {
    if (!this.props.currentUser || this.props.loading) {
      return (
        <div>
          <div className="overlay"></div>
          <div className="loading">Threading Multiverse...</div>
        </div>
      );
    }

    let errors = this.props.errors.map((error, idx) => (
      <h4 key={idx}>{error}</h4>
    ));
    let profilePic = ( this.props.currentUser.profile ? this.props.currentUser.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png");
    return (
      <div>
        <main className="container">
          <div className="vertical-container">
            <aside className="profile-pic">
              <img className="edit-pic" src={profilePic} onClick={this.updateProfilePic}/>
              <p>Click image to update profile pic</p>
            </aside>
            <section className="main-profile">
              <article className="profile-header">
                <h1>{this.props.currentUser.username}</h1>
                <h3>{this.props.currentUser.site.city}</h3>
                <h3>{this.props.currentUser.year}</h3>
              </article>
              <article className="profile-buttons">
                <h4>{this.state.error}</h4>
                {errors}
              </article>
              <article className="profile-info">
                <nav className="profile-navbar">
                  <ul>
                    <li><a href="/#/edit_profile" className="profile-navbar-links">about</a></li>
                    <li><a href="/#/edit_profile/site" className="profile-navbar-links">house</a></li>
                  </ul>
                </nav>
                {this.props.children}
              </article>
            </section>
          </div>
        </main>
      </div>
    );
  }

}

export default EditProfile;
