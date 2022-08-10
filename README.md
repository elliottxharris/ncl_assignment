# NCL Assignment

## My Process
Initially when I read the description of thw assignment I debated using any sort of state management since it is just one page. If it is just one page Flutter can handle the state pretty well just by using stateful widgets and the setState function. As I thought about it more though, I changed my thought process a bit and started thinking about this like the beginning of an app instead of just a one page assignment. In that case it made sense to use some state management library. This would also keep the entire page from reloading when setState was called. For example the buttons should not reload if the ship the details change.

I settled on the MVVM architecture with the provider package. MVVM and the provider package were mainly chosen for the first rule of SOLID. I wanted to take all the logic away from my views and only have them handle the UI.

In my provider that handles the state of the ship details I decided to store each ship in a map and then reference that if the same button is clicked twice. I did this while thinking about scaling the app. If 1 million users are using the app I would want to reduce the amount of requests the app sends out as much as possible. So every time one of the three buttons is tapped I first referenced the map to see if it already exists. If it does then I use the details already stored in the state. This should significantly reduce the amount of requests.

I wanted to show my testing skills and methodologies. So I have included examples of all three types of tests in the tests folder.

A final note: Though I did not neglect the UI, I did not put as much focus on it as I normally would. I wanted to show my architecture skills and decision process more than show my design skills.
