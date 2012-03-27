# Fuck

Slow down your Rubies and Rails.

## Why in the hell would I do that?

When developing "big kid" applications and APIs that have strict performance requirements (i.e. All requests must take no longer than 75 ms), by artificially raising your application's performance baseline you are essentially forcing yourself and your development team to have less "wiggle room" for performance slowdowns. It indirectly forces you to plan ahead and do the hard stuff correctly and efficiently the first time around.

## Installation

In your Gemfile:

    gem 'fuck'

## Usage

In Rails, create an initializer: (lets say config/initializers/fuck.rb)

    # This adds a 10ms delay to all controller actions
    Fuck::Penalize::ActionController.penalize(0.01)
