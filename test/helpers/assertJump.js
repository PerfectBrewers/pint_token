module.exports = function (error) {
    assert.isAtMost(error.message.search('invalid opcode'), -1, 'Invalid opcode error must be returned');
}
