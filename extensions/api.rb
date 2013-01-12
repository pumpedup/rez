require 'sinatra/base'
require 'sinatra/json'

def api_url(request, resource_name)
  "#{request.scheme}://#{request.host}:#{request.port}#{resource_name}"
end


module Sam
  module API
    class MethodInfo
      attr_accessor :long_description, :rel, :path
      attr_reader :verbs

      def initialize
        @verbs = []
      end

      def link(request)
        api_url request, path
      end

      def render(request)
        {
            :link => link(request),
            :rel => rel || "link",
            :long_description => long_description || "",
            :verbs => verbs
        }
      end
    end

    def self.registered(app)
      app.helpers Sinatra::JSON

      app.set :services, {}

      def app.api_method(verb, path, opts={}, &block)
        info = settings.services[path] || MethodInfo.new
        info.path = path
        info.rel = opts.delete(:rel)
        info.long_description = opts.delete(:desc)
        info.verbs.push(verb)

        settings.services[path] = info

        route verb, path, opts, &block
      end

      def app.get(path, opts={}, &block)
        conditions = @conditions.dup
        api_method('GET', path, opts, &block)

        @conditions = conditions
        route('HEAD', path, opts, &block)
      end

      def app.put(path, opts={}, &bk) api_method 'PUT', path, opts, &bk end
      def app.post(path, opts={}, &bk) api_method 'POST', path, opts, &bk end
      def app.delete(path, opts={}, &bk) api_method 'DELETE', path, opts, &bk end
      def app.head(path, opts={}, &bk) api_method 'HEAD', path, opts, &bk end
      def app.options(path, opts={}, &bk) api_method 'OPTIONS', path, opts, &bk end
      def app.patch(path, opts={}, &bk) api_method 'PATCH', path, opts, &bk end

      app.get '/', :rel => "root", :desc => "Enumeration of available services." do
        json :services => settings.services.keys.map { |el| settings.services[el].render request }
      end
    end
  end
end