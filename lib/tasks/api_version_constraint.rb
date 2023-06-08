class ApiVersionConstraint
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['accept'].includ?("application/vnd.taskmanager.v#{@version}")
  end
end