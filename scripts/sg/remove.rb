require_relative 'utils'


class Remove
  def initialize(object, utils)
    @object = object
    @root = Dir.pwd
    @utils = utils
    @object_partial = @utils.partial @object

    remove
    remove_folders
  end

  def remove
    puts "Removing #{@object} into:"
    puts " - #{@utils.html}"
    puts " - #{@utils.css}"
    puts " - #{@utils.sg}"

    puts system("rm #{@utils.html}/#{@object}#{@utils.ext}")
    puts system("rm #{@utils.css}/#{@object_partial}.scss")
    puts system("rm #{@utils.sg}/#{@object}#{@utils.ext}")
  end

  def remove_folders
    folder = @utils.split @object, 1
    puts system("rmdir -p #{@utils.html}/#{folder}")
    puts system("rmdir -p #{@utils.sg}/#{folder}")
  end
end
