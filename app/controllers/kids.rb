 class KidsController < ApiController
  before_action :authenticate, only: %i[create update destroy]
  
        # GET/kids
        def index
          render json: serializer(kids, options)
        end
        
        # GET/kids
        def show
          render json: serializer(kid, options)
        end
  
        # POST/kids
        def create
          kid = Kid.new(kid_params)
  
          if kid.save
            render json: serializer(kid)
          else
            render json: errors(kid), status: 422
          end
        end
  
        # PATCH /kids
        def update
          kid = Kid.find_by(params[:id])
  
          if kid.update(kid_params)
            render json: serializer(kid, options)
          else
            render json: errors(kid), status: 422
          end
        end
  
        # DELETE/kids
        def destroy
          if kid.destroy
            head :no_content
          else
            render json: errors(kid), status: 422
          end
        end
  
        private
  
        # Used For compound documents with fast_jsonapi
        def options
          @options ||= { include: %i[reviews] }
        end
  
        # Get all kids
        def kids
          @kids ||= Kid.includes(reviews: :user).all
        end
  
        # Get a specific kid
        def kid
          @kid||= Kid.includes(reviews: :user).find_by(params[:id])
        end
  
        # Strong params
        def kid_params
          params.require(:kid).permit(:name, :image_url)
        end
  
        # fast_jsonapi serializer
        def serializer(records, options = {})
          KidSerializer
            .new(records, options)
            .serialized_json
        end
  
        # Errors
        def errors(record)
          { errors: record.errors.messages }
        end
      end
    end
  end