return {
  'AaravB23/spotui-nvim',
  config = function()
    require('spotui').setup({
      position = 'bottom-left',
      poll_interval = 2000,
      window = {
        width = 30,
        expand_duration = 1500,
      }
    })
  end
}
