#ifndef COMPARATOR_HPP
#define COMPARATOR_HPP

#include <map>
#include <string>
#include <utility>

struct comparator {
    // comparator for children fields of config item
    bool operator()(const std::pair<std::string, std::map<std::string, std::string>> &lhs,
                    const std::pair<std::string, std::map<std::string, std::string>> &rhs) const
    {
        return lhs.first != rhs.first;
    }
    // comparator for parent fields of config item
    bool operator()(const std::pair<int, std::string>& lhs,
                    const std::pair<int, std::string>& rhs) const
    {
        return lhs.first != rhs.first;
    }
};
class KeyLess
{
    public:

      template< typename KeyType >
      static KeyType getKey( const KeyType& k )
      {
          return k;
      }

      template< typename KeyType, typename ValueType >
      static KeyType getKey( std::pair< const KeyType, ValueType > const& p )
      {
          return p.first;
      }

      template< typename L, typename R >
      bool operator()( const L& l, const R& r ) const
      {
          return getKey( l ) < getKey( r );
      }
};
#endif
