#ifndef M3UA_NETWORK_APPEARANCE_HPP
#define M3UA_NETWORK_APPEARANCE_HPP

#include "m3ua.hpp"
#include "Buffer.hpp"
#include "Logging.hpp"

//──────────────────────────────────────────────────────────────
struct m3uaNetworkAppearance : public m3uaTL {                                              
//──────────────────────────────────────────────────────────────

    m3uaNetworkAppearance()
    ~m3uaNetworkAppearance();


    inline void                   encode(Buffer &msg);
    inline void                   decode(Buffer & msg);

    inline void                   print();

    inline uint16_t               network_appearance();

private:

    uint16_t                      _network_appearance
};

inline m3uaNetworkAppearance() :
//-------------------------------
inline uint16_t m3uaNetworkAppearance::network_appearance() {
//-------------------------------
    return network_appearance;
}
//-------------------------------
inline void m3uaNetworkAppearance::network_appearance(uint16_t val) {
//-------------------------------
    network_appearance = val;
}
//-------------------------------
void m3uaHeader::encode(Buffer &msg) {
//-------------------------------
};

//-------------------------------
void m3uaHeader::decode(Buffer & msg) {
//-------------------------------
    m3uaNetworkAppearance *na = (m3uaNetworkAppearance *) msg.getStartOfData();
    network_appearance(na->network_appearance());
};
//-------------------------------
void m3uaHeader::print() {
//-------------------------------
    TRACE("+ Network Appearance =", network_appearance);
}
#endif
