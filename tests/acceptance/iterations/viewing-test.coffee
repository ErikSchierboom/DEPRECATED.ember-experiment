acceptance('Viewing iterations for an exercise')

test 'I navigate to an iteration for an exercise', ->
  visit('/exercise/someones-exercise/1')

  click('a:contains(2)')

  andThen ->
    expect(currentURL()).to.equal('/exercise/someones-exercise/2')


test 'I view an iteration for an exercise', ->
  visit('/exercise/someones-exercise/2')

  andThen ->
    expect(find('h3').text()).to.equal('Iteration 2')