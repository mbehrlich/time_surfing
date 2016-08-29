## Component Hierarchy

**Root**
  - NavbarContainer
    + Navbar
      * props: current_user, current_era
      * dispatch: guestLogin, logoutUser
      * JoinContainer
        - Join
        - props: current_user
        - dispatch: signupUser, guestLogin
      * LoginContainer
        - Login
        - props: current_user
        - dispatch: requestLogin, guestLogin
  - Splash
    - props: current_era
    - dispatch: changeEra (BONUS)
  - Dashboard
    + UserInfoContainer
      * UserInfo
        - props: current_user
        - dispatch: deleteSite
      * AcceptGuestContainer
        - AcceptGuest
          + props: site
          + dispatch: createSite
      * AdIndex (BONUS)
        - Ad
      * BookingsIndexContainer
        - BookingsIndex
          + props: bookings, loading
          + dispatch: cancelBooking, requestBookings
          + Booking
            - props: booking
            - dispatch: cancelBooking
            - EnsureCancelBooking
              + dispatch: cancelBooking
      * GuestsIndexContainer
        - GuestsIndex
          + props: users, loading
          + dispatch: cancelGuest, requestGuests
          + Guest
            - props: user
            - dispatch: cancelGuest
            - EnsureCancelGuest
              + dispatch: cancelGuest
  - LocationSearchContainer
    + LocationSearch
      * props: sites, current_era, loading
      * dispatch: locationSearch, changeEra
      * LocationSearchForm
        - props: current_era
        - dispatch: locationSearch
      * SearchResultsIndex
        - props: sites
        - SearchResult
          + props: site
          + dispatch: requestHost
      * Map
        - props: sites
        - dispatch: locationSearch, requestHost
  - MemberSearchContainer (BONUS)
    + MemberSearch
      * props: users, loading
      * dispatch: userSearch
      * MemberSearchForm
        - dispatch: userSearch
      * SearchResultsIndex
        - props: users
        - SearchResult
          + props: user
  - ProfileContainer
    + Profile
    + props: user, loading
    + dispatch: requestUser, sendMessage(BONUS), sendFriendRequest(BONUS), sendReference
    + SendRequestContainer
      * SendRequest
        - props: current_user, user, request
        - dispatch: sendRequest
    + SendMessage (BONUS)
      * props: current_user, user
      * dispatch: sendMessage
    + EnsureAddFriend (BONUS)
      * props: current_user, user
      * dispatch: sendFriendRequest
    + WriteReference
      * props: current_user, user
      * dispatch: sendReference
    + AboutUser (BONUS)
      * props: user, loading
    + AboutSiteContainer
      * AboutSite
        - props: site
        - dispatch: requestSite
    + Photos (BONUS)
      * props: user, loading
      * Photo
        -props: photo
    + ReferencesContainer
      * References
        - props: references, loading
        - dispatch: requestReferences
    + FriendsContainer (BONUS)
      * FriendsIndex
        - props: user, users, loading
        - dispatch: requestFriends
        - Friend
          + props: user
  - UpdateProfileContainer
    + UpdateProfile
    + props: current_user, loading
    + dispatch: requestUser, changeProfilePic(BONUS), updateUser(BONUS), deleteUser
    + UpdateUser (BONUS)
      * props: current_user, loading, updateUser
    + UpdateSiteContainer
      * UpdateSite
        - props: current_user, site, loading
        - dispatch: requestSite, updateSite, removeSite
    + UpdatePhotos (BONUS)
      * props: current_user, loading
      * dispatch: addPic, removePic
    + UpdateFriendsContainer (BONUS)
      * UpdateFriendsIndex
        - props: current_user, users, loading
        - dispatch: requestFriends, removeFriend
        - Friend
          + props: user
          + dispatch: removeFriend
  - InboxContainer (BONUS)
    + Inbox
      * props: current_user, messages
      * dispatch: acceptFriend, deleteMessage
      * MessageList
        - props: messages
      * Message
        - props: messsage
        - dispatch: acceptFriend, deleteMessage
  - AboutIndex (BONUS)
    + About
    + Safety
    + HowItWorks
  - Footer

|Path|Component|
|----|---------|
|"/"|"Splash"|
|"/login"|"LoginContainer"|
|"/join"|"JoinContainer"|
|"/dashboard"|"Dashboard"|
|"/dashboard/acceptguests"|"AcceptGuestContainer"|
|"/locationsearch"|"LocationSearchContainer"|
|"/membersearch"|"MemberSearchContainer"|
|"/users/:id"|"ProfileContainer"|
|"/users/:id/sendrequest"|"SendRequestContainer"|
|"/users/:id/sendmessage"|"SendMessage"|
|"/users/:id/ensurefriendrequest"|"EnsureAddFriend"|
|"/users/:id/writereference"|"WriteReference"|
|"/users/:id/site"|"AboutSiteContainer"|
|"/users/:id/photos"|"Photos"|
|"/users/:id/photos/photo_id"|"Photo"|
|"/users/:id/"|"ReferencesContainer"|
|"/users/:id/friends"|"FriendsContainer"|
|"/editprofile/"|"UpdateProfileContainer"|
|"/editprofile/site"|"UpdateSiteContainer"|
|"/editprofile/photos"|"UpdatePhotos"|
|"/editprofile/friends"|"UpdateFriendsContainer"|
|"/inbox"|"InboxContainer"|
|"/inbox/:message_id"|"Message"|
|"/about"|"AboutIndex"|
|"/about/safety"|"Safety"|
|"/about/howitworks"|"HowItWorks"|
