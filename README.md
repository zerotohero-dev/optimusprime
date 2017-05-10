```
                          /[-])//  ___
                     __ --\ `_/~--|  / \
                   /_-/~~--~~ /~~~\\_\ /\
                   |  |___|===|_-- | \ \ \
 _/~~~~~~~~|~~\,   ---|---\___/----|  \/\-\
 ~\________|__/   / // \__ |  ||  / | |   | |
          ,~-|~~~~~\--, | \|--|/~|||  |   | |
          [3-|____---~~ _--'==;/ _,   |   |_|
                      /   /\__|_/  \  \__/--/
```

**Optimus Prime** is a Transformer (*okay, it’s an instance of a [babel-jest](babel-jest) transformer*). 

## About This Repository

This repository is a part of the [Byte-Sized JavaScript Screencasts][vidcast].

```
  _               __
 |_)   _|_  _ __ (_  o _   _   _|
 |_) \/ |_ (/_   __) | /_ (/__(_|
     /        |  _.     _. (_   _ ._ o ._ _|_
            \_| (_| \/ (_| __) (_ |  | |_) |_
                                       |
            »»  bytesized.tv  ««
```

## Byte-Sized What?!

[Byte-Sized JavaScript][vidcast].

It is a compilation of short (*around ten minutes*) monthly screencasts about **JavaScript** and related technologies.

[vidcast]: https://bytesized.tv/ "ByteSized.TV"

## About **Optimus Prime**

**Optimus Prime** is a [babel-jest](babel-jest) transformer*. 

I needed to create one, because I wanted to run a set of babel transformations in [jest][jest], and then realized that **jest** was swallowing the transform plugins that I specified in the `.babelrc` file.

It took a while for me to figure things out. And then as any good open-source citizen would do, [I patched jest, and created a Pull Request][jest-patch]; however, the pull requrest got rejected, suggesting that a better way would be to create a transformer to do this task instead.

And thus, **Optimus Prime** was born **:)**.

## Installation

Using [npm][npm]:

```bash
npm install optimusprime
```

Using [yarn][yarn]:

```bash
yarn add optimusprime
```

## Usage

Create an `OptimusPrime.js` in our project root:

```js
// ./OptimusPrime.js
module.exports = require( 'optimusprime' );
```

Configure `jest` to use **Optimus Prime**:

```json
// package.json
…
  "jest": {
    "transformIgnorePatterns": [
      "<rootDir>/node_modules/(?!bytesized)"
    ],
    "transform": {
      "^.+\\.(js|jsx)$": "<rootDir>/OptimusPrime.js"
    }
  },
…
```

## Dependencies

**Optimus Prime** is a [jest][jest] transformer, so obviously you’ll need [jest][jest].

You will also need the **current** version of [Node.JS](https://nodejs.org/) with all the bells and whistles — [You can install it from nodejs.org](https://nodejs.org/).

> Note that **Optimus Prime** will probably work with older **Node.JS** versions too (*unless it’s archaic like v4.x or v5.x*); however, it’s being tested and developed only with the **current** Node.JS version at the moment. 
>
> If you have problem using **Optimus Prime** in an older **Node.JS** runtime, [file an issue][issue], and we’ll see what we can do about it **;)**.

## Package Scripts

None at the moment.

## Important Files and Folders

* `./lib/*`: The source files live here.
* `./CHANGELOG.md`: A log of what has been done since the last version.
* `./CODE_OF_CONDUCT.md`: Tells the collaborators to be nice to each other.
* `./README.md`: This very file.
* `./.eslintrc`: Used for development; configures [eslint][eslint].
* `.travis.yml`: Used for CI; configures [Travis][travis].

## Deployment Instructions

Since this web application uses `ServiceWorker`s, busting cache can sometimes be an issue.

Here’s step-by-step instructions to follow for a successful deployment (*I’ll automate this once I’m sure the process is repeatable and trustworthy enough*).

* Let `${version}` be the version number in the `package.json`.
* Bump the version number.
* Add the new state.json in the form `state-${version}.json` to `public/data`.
* Clean the generated assets from the former webpack bundling.
* Update `public/version.txt` with the new version number.
* Execute `npm run build` (*assuming lints and tests are passing already*).
* Deploy the `public` folder to **AWS S3**.
* Invalidate all **CloudFront** caches.
* Live long and prosper.

## Wanna Help?

Any help is more than appreciated.

If you want to contribute to the source code, **fork this repository** and **create a pull request**.

> In lieu of a formal style guide, take care to maintain the existing coding style.

Also, don’t forget to add unit tests for any new or changed functionality.

If you want to report a bug; or share a comment or suggestion, [file an issue][issue].

## I’ve Found a Bug; I Have an Idea

[For bug reports and suggestions, please file an issue][issues].

## Contact Information

* **Project Maintainer**: [Volkan Özçelik](https://volkan.io/)
* **Project Website**: [bytesized.tv](https://bytesized.tv/)

## License

MIT-licensed. — [See the license file for details](LICENSE.md).

## Code of Conduct

We are committed to making participation in this project a harassment-free experience for everyone, regardless of the level of experience, gender, gender identity and expression, sexual orientation, disability, personal appearance, body size, race, ethnicity, age, religion, or nationality.

[See the code of conduct for details](CODE_OF_CONDUCT.md).

[npm]: https://www.npmjs.com "npm"
[yarn]: https://yarnpkg.com "yarn"
[babel-jest]: https://github.com/babel/babel-jest "babel-jest"
[jest]: https://facebook.github.io/jest/ "jest"
[issue]: https://github.com/jsbites/bytesized.tv.web/issues/new "File an issue"
