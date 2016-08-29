## Redux Structure

**Auth**
  - signupUser
    + invoked from join component
    + Dispatches signupUser action
    + middleware makes createUser request to the api and dispatches a loginUser action, dispatches receive errors action on failure
    + reducer receives the loginUser action and sets current_user in the state (Also done by rails helper method)
  - loginUser (guestLogin as well)
    + invoked from login component
    + Dispatches requestLogin action
    + middleware makes login request to api and dispatches a loginUser action dispatches receive errors action on failure
    + reducer receives the loginUser action and sets current_user in the state
  - logoutUser
    + invoked from navbar component
    + Dispatches requestLogout action
    + middleware makes logout request to api and dispatches a logoutUser action
    + reducer receives the logoutUser action and removes current_user in the state

**Users**
  - requestUser
    + invoked from user profile and dashboard components
    + Dispatches requestUser
    + middleware makes fetchUser request to api and dispatches receive user.
    + reducer catches requestUser and goes to loading screen, receiveUser updates state
  - updateUser
    + invoked from edit profile page
    + Dispatches updateUser
    + middleware makes updateUser request to api and dispatches receive user.
    + reducer catches updateUser and goes to loading screen, receiveUser updates state
  - removeUser
    + invoked from edit profile page
    + Dispatches removeUser
    + middleware makes logout request and deleteUser request and dispatches logoutUser action.
    + reducer gets logoutUser action
  - locationSearch
    + invoked from locationSearch component
    + dispatches locationSearch
    + middleware makes api call to location search and dispatches receiveUsers.
    + reducer catches locationSearch and renders loading screen and then receiveUsers and updates state.
  - memberSearch  
    + invoked from memberSearch component
    + dispatches memberSearch
    + middleware makes api call to member search and dispatches receiveUsers.
    + reducer catches memberSearch and renders loading screen and then receiveUsers and updates state.
  - requestFriends
    + invoked from profile and editProfile components
    + dispatches requestFriends
    + middleware makes api call to user friends and dispatches receiveUsers
    + reducer catches requestFriends and renders loading screen and then receiveUsers and updates state
  - clearUsers
    + invoked onExit from search and friends components.
    + dispatches clearUsers
    + reducer catches clearUsers and resets state.

**Sites**
  - createSite
    + invoked from AcceptGuests component
    + dispatches createSite
    + middleware makes api call to create Site and dispatches receiveSite
    + reducer catches createSite and renders loading screen and then receiveSite and updates state.
  - deleteSite
    + invoked from Dashboard component
    + dispatches deleteSite
    + middleware makes api call to delete site and dispatches removeSite
    + reducer catches removeSite and updates state
  - updateSite
    + invoked from UpdateProfile component
    + dispatches updateSite
    + middleware makes api call to update site and dispatches receiveSite
    + reducer catches updateSite and renders loading screen and then receiveSite and updates state.
  - requestSite
    + invoked from AboutSite component
    + dispatches requestSite
    + middleware makes api call to request site and dispatches receiveSite
    + reducer catches requestSite and renders loading screen and then receiveSite and updates state.

**References**
  - createReference
    + invoked from WriteReference component
    + dispatches createReference
    + middleware makes api call to create reference
  - requestReferences
    + invoked from References
    + dispatches requestReferences
    + middleware makes api call to get references and dispatches receiveReferences
    + reducer catches requestReferences and renders loading screen and then receiveReferences and updates state.

**Friends** BONUS
  - sendFriendRequest
    + invoked from EnsureAddFriend
    + dispatches EnsureAddFriend
    + middleware makes api call to create friend request, dispatches SentFriendRequest
    + reducer makes message appear "Friend request sent"
  - acceptFriendRequest
  - deleteFriendship

**Messages** BONUS
  - requestMessages
  - sendMessage
  - deleteMessage

**Photos** BONUS
  - requestPicture
  - requestPictures
  - deletePicture
  - createPicture
