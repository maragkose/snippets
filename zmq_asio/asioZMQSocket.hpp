class asio_zmq_req_socket {
public:
	asio_zmq_req_socket(boost::asio::io_service& __io_service, std::string __srv_addr):
		sock_(__io_service) 
	{
		void *zmq_ctx = get_zmq_context ();
    	zmq_sock_ = zmq_socket (zmq_ctx, ZMQ_REQ);

    	if (zmq_sock_ == NULL) {
    		throw zmq_exception("could not create a zmq REQ socket");
    	}

    	int zfd;
    	size_t optlen = sizeof (zfd);
    	zmq_getsockopt (zmq_sock_, ZMQ_FD, &zfd, &optlen);
    	sock_.assign (boost::asio::ip::tcp::v4(), zfd);

    	int rc = zmq_connect (zmq_sock_, __srv_addr.c_str ());
    	if (rc) {
    		throw zmq_exception("zmq socket: could not connect to " + __srv_addr);
    	}
	}

	template <typename ConstBufferSequence, typename Handler>
	void async_send (const ConstBufferSequence & buffer, Handler handler) {
		zsock_send_op<ConstBufferSequence, Handler> send_op (zmq_sock_, buffer, 
			handler);
		sock_.async_write_some (boost::asio::null_buffers(), send_op);
	}

	template <typename MutableBufferSequence, typename Handler>
	void async_recv (const MutableBufferSequence & buffer, Handler handler) {
		zsock_recv_op<MutableBufferSequence, Handler> recv_op (zmq_sock_, buffer, 
			handler);
		sock_.async_read_some (boost::asio::null_buffers(), recv_op);
	}

	~asio_zmq_req_socket() {
		// the order matters
		sock_.close(); 
		zmq_close (zmq_sock_);	
	}
private:
	void *zmq_sock_ = nullptr;
	boost::asio::ip::tcp::socket sock_;
};
