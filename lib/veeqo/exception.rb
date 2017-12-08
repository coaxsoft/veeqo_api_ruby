module Veeqo
  class HttpError < StandardError
    attr_accessor :response_headers
    def initialize(headers)
      @response_headers = headers
    end
  end

  class BadRequest < HttpError; end
  class Unauthorized < HttpError; end
  class Forbidden < HttpError; end
  class NotFound < HttpError; end
  class MethodNotAllowed < HttpError; end
  class NotAccepted < HttpError; end
  class TimeOut < HttpError; end
  class ResourceConflict < HttpError; end
  class TooManyRequests < HttpError; end
  class InternalServerError < HttpError; end
  class BadGateway < HttpError; end
  class ServiceUnavailable < HttpError; end
  class GatewayTimeout < HttpError; end
  class BandwidthLimitExceeded < HttpError; end

  module HttpErrors
    ERRORS = {
      400 => Veeqo::BadRequest,
      401 => Veeqo::Unauthorized,
      403 => Veeqo::Forbidden,
      404 => Veeqo::NotFound,
      405 => Veeqo::MethodNotAllowed,
      406 => Veeqo::NotAccepted,
      408 => Veeqo::TimeOut,
      409 => Veeqo::ResourceConflict,
      429 => Veeqo::TooManyRequests,
      500 => Veeqo::InternalServerError,
      502 => Veeqo::BadGateway,
      503 => Veeqo::ServiceUnavailable,
      504 => Veeqo::GatewayTimeout,
      509 => Veeqo::BandwidthLimitExceeded
    }.freeze

    def throw_http_exception!(code, env)
      return unless ERRORS.keys.include? code
      response_headers = {}
      unless env.body.empty?
        response_headers = begin
          Oj.load(env.body, symbol_keys: true)
        rescue
          {}
        end
      end
      unless env[:response_headers] && env[:response_headers]['X-Retry-After'].nil?
        response_headers[:retry_after] = env[:response_headers]['X-Retry-After'].to_i
      end
      raise ERRORS[code].new(response_headers), env.body
    end
  end
end
