module.exports = require( 'babel-jest' ).createTransformer( {
    plugins: [ 'istanbul', 'transform-es2015-modules-commonjs' ]
} );