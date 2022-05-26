#include <iostream>
#include <type_traits>
#include <tuple>

typedef struct {
	int a;
	int b;
} bar;

typedef struct {
	int c;
	bar d;
} baz;


template <typename T, typename S, typename... Ss>
auto inline getField(const T& obj, S field1, Ss... fields)
{
	if constexpr (!sizeof...(fields))
		return obj.*field1;
	else
		return getField(obj.*field1, fields...);
}

template <typename Obj, class ...C, typename... T>
auto inline getMyField(const Obj& obj, T C::*... field)
{
	return getField(obj, field...);
}
template <typename Obj, typename Out, class ...C, typename... T>
auto inline getMyField(const Obj& obj, T C::*... field)
{
	return static_cast<Out>(getField(obj, field...));
}

template<class T> struct tag_t { using type = T; };
template<class...Ts>
using last = typename std::tuple_element_t< sizeof...(Ts) - 1, std::tuple<tag_t<Ts>...> >::type;

template <typename F, size_t... Is>
auto indices_impl(F f, std::index_sequence<Is...>)
{
	return f(std::integral_constant<size_t, Is>()...);
}
template <size_t N, typename F>
auto indices(F f)
{
	return indices_impl(f, std::make_index_sequence<N>());
}

// take function and parameter pack, and call function with all elements in parameter pack except last
template <typename F, typename... Ts>
auto drop_last(F f, Ts... ts)
{
	return indices<sizeof...(Ts) - 1>
		([&](auto... Is)
	{
		auto tuple = std::make_tuple(ts...);
		return f(std::get<Is>(tuple)...);
	});
}

template <typename Obj, typename... T>
auto inline getMyFieldWrapper(const Obj& obj, T... field)
{
	if constexpr (std::is_member_object_pointer_v<last<Obj, T...>>)
		return getMyField(obj, field...);
	else
		return drop_last(
		[&](auto... elems)
		{
			return getMyField(obj, last<Obj, T...>{}, elems...);
		}, field...);
}

int main()
{
	baz myObj;
	std::cout << getMyFieldWrapper(myObj, &baz::c);				 // works
	std::cout << getMyFieldWrapper(myObj, &baz::d, &bar::b);     // works
//	std::cout << getMyFieldWrapper(myObj, &baz::d, &bar::b, 0.); // doesn't
}
