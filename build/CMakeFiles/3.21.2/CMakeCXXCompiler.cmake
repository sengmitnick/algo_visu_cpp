set(CMAKE_CXX_COMPILER "/nix/store/lhyf1i2n3xljp01rr6rl27fg391zgg33-gcc-wrapper-11.2.0/bin/g++")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "GNU")
set(CMAKE_CXX_COMPILER_VERSION "11.2.0")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "")
set(CMAKE_CXX_COMPILER_WRAPPER "")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "17")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters;cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates;cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates;cxx_std_17;cxx_std_20;cxx_std_23")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX14_COMPILE_FEATURES "cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates")
set(CMAKE_CXX17_COMPILE_FEATURES "cxx_std_17")
set(CMAKE_CXX20_COMPILE_FEATURES "cxx_std_20")
set(CMAKE_CXX23_COMPILE_FEATURES "cxx_std_23")

set(CMAKE_CXX_PLATFORM_ID "Linux")
set(CMAKE_CXX_SIMULATE_ID "")
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_CXX_SIMULATE_VERSION "")




set(CMAKE_AR "/nix/store/8pjwvcn5513hgq7g0v1192w17jsgn7k8-binutils-2.35.2/bin/ar")
set(CMAKE_CXX_COMPILER_AR "/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/bin/gcc-ar")
set(CMAKE_RANLIB "/nix/store/8pjwvcn5513hgq7g0v1192w17jsgn7k8-binutils-2.35.2/bin/ranlib")
set(CMAKE_CXX_COMPILER_RANLIB "/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/bin/gcc-ranlib")
set(CMAKE_LINKER "/nix/store/lhyf1i2n3xljp01rr6rl27fg391zgg33-gcc-wrapper-11.2.0/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCXX 1)
set(CMAKE_CXX_COMPILER_LOADED 1)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_CXX_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_CXX_COMPILER_ENV_VAR "CXX")

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_CXX_COMPILER_ID_RUN 1)
set(CMAKE_CXX_SOURCE_FILE_EXTENSIONS C;M;c++;cc;cpp;cxx;m;mm;mpp;CPP;ixx;cppm)
set(CMAKE_CXX_IGNORE_EXTENSIONS inl;h;hpp;HPP;H;o;O;obj;OBJ;def;DEF;rc;RC)

foreach (lang C OBJC OBJCXX)
  if (CMAKE_${lang}_COMPILER_ID_RUN)
    foreach(extension IN LISTS CMAKE_${lang}_SOURCE_FILE_EXTENSIONS)
      list(REMOVE_ITEM CMAKE_CXX_SOURCE_FILE_EXTENSIONS ${extension})
    endforeach()
  endif()
endforeach()

set(CMAKE_CXX_LINKER_PREFERENCE 30)
set(CMAKE_CXX_LINKER_PREFERENCE_PROPAGATES 1)

# Save compiler ABI information.
set(CMAKE_CXX_SIZEOF_DATA_PTR "8")
set(CMAKE_CXX_COMPILER_ABI "ELF")
set(CMAKE_CXX_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CXX_LIBRARY_ARCHITECTURE "")

if(CMAKE_CXX_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CXX_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CXX_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CXX_COMPILER_ABI}")
endif()

if(CMAKE_CXX_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_CXX_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "/nix/store/p30hamqm7fn0i7p8fq81d0ijv0gg0b9g-gnumake-4.3/include;/nix/store/3hpiypawj4wwcbwi37wp8clky96dcc8y-openssl-1.1.1o-dev/include;/nix/store/3ri3n6in7q0wivk3cdplhx4hxfl5h491-sqlite-3.36.0-dev/include;/nix/store/mvqdjpggc8xgqwdlwp64l4r18vh77ka2-mysql-5.7.37/include;/nix/store/k8zqmra3b5gpmajqzki5x4v95kzwgazh-jsoncpp-1.9.4-dev/include;/nix/store/i873lxmbkifhk31vbprngwp76cgs864l-CUnit-2.1-3/include;/nix/store/24nqlwhz95yw0avsv0xwvz7viws0n0qj-gtest-1.11.0-dev/include;/nix/store/zkm3cqqxxz5nkqhy53xfahwbq86yq07p-boost-1.75.0-dev/include;/nix/store/p0fbhd6ip7p1f1jql43fmgx5j5knw984-icu4c-70.1-dev/include;/nix/store/nagzm8g2jp3qnvq22a0a9yjz03hrxrlb-nlohmann_json-3.10.2/include;/nix/store/aqgpfay84b43lkrknbvxqqisv9wg633x-curl-7.79.1-dev/include;/nix/store/1gi5whc298kbxqjv57j31lz5div9cpc6-nghttp2-1.43.0-dev/include;/nix/store/b2jgp8hm35k9420ba00dm8xdnvkpd31d-libidn-1.38-dev/include;/nix/store/2y10rqa796j9xcjai8sqi9xa3gvaifh8-zlib-1.2.12-dev/include;/nix/store/1dd7d04396rs759smvp4lpw70ci6lbsg-libkrb5-1.18-dev/include;/nix/store/xhbg31f6vfv1hcpndqv18j9igqv1fsms-libssh2-1.10.0-dev/include;/nix/store/881nfkxjjf1dymbr020yk0wmsbaf4baz-brotli-1.0.9-dev/include;/nix/store/1l9yql92jfyg9d0226bpl04m74hvgshd-drogon-1.7.4/include;/nix/store/dfq92bnhvdr46s5k9x315vzm4glsmji0-libossp-uuid-1.6.2/include;/nix/store/28raxgh91r9rrkxfig6mg1halsxnw3x4-c-ares-1.17.2/include;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/include/c++/11.2.0;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/include/c++/11.2.0/x86_64-unknown-linux-gnu;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/include/c++/11.2.0/backward;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/lib/gcc/x86_64-unknown-linux-gnu/11.2.0/include;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/include;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/lib/gcc/x86_64-unknown-linux-gnu/11.2.0/include-fixed;/nix/store/nzgdh8ak106kqk1snc0b3ckna8gjx354-glibc-2.33-123-dev/include")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "/nix/store/dmhq727zgz5zixq1vz22kqji5y1bgm5i-openssl-1.1.1o/lib;/nix/store/hhdy2c3ig2vm05f1bljzwa4yasqhvx22-sqlite-3.36.0/lib;/nix/store/mvqdjpggc8xgqwdlwp64l4r18vh77ka2-mysql-5.7.37/lib;/nix/store/bf7jjd9jnkrrqngh26kc7r04s5zkgx6j-jsoncpp-1.9.4/lib;/nix/store/i873lxmbkifhk31vbprngwp76cgs864l-CUnit-2.1-3/lib;/nix/store/x7nqqdjnkkq5mfs03n1fcfd05zchh07j-gtest-1.11.0/lib;/nix/store/69aw7acwxphnkbb3vhjphjq2fz0c42q5-boost-1.75.0/lib;/nix/store/hxmq3wkri047irhas0bgbvr7s8svg5y9-icu4c-70.1/lib;/nix/store/fmxkxd21yf4qklf4b07p8va881m0giq8-nghttp2-1.43.0-lib/lib;/nix/store/ffa40clh365ccc4r47d4rkw5sz8i00gk-libidn-1.38/lib;/nix/store/2yy85x1bhwmynzmpr4n29caxpfm0bkk4-zlib-1.2.12/lib;/nix/store/sxwqxjcqjxqa25chy8k4lg6di2lsy2zk-libkrb5-1.18/lib;/nix/store/drbyp7dgw4bi760zsyy6b7hzxp32zj28-libssh2-1.10.0/lib;/nix/store/3gjnn0qidg12aqb9byjnp7f563mkv3s3-brotli-1.0.9-lib/lib;/nix/store/1blwp2kqjg5xkk2gs3i3l8l36r1mhzqi-curl-7.79.1/lib;/nix/store/1l9yql92jfyg9d0226bpl04m74hvgshd-drogon-1.7.4/lib;/nix/store/dfq92bnhvdr46s5k9x315vzm4glsmji0-libossp-uuid-1.6.2/lib;/nix/store/28raxgh91r9rrkxfig6mg1halsxnw3x4-c-ares-1.17.2/lib;/nix/store/0xxjx37fcy2nl3yz6igmv4mag2a7giq6-glibc-2.33-123/lib;/nix/store/mrjdwxkv1mszyhy2wwjbdn9s9qkjfm6r-gcc-11.2.0-lib/lib;/nix/store/lhyf1i2n3xljp01rr6rl27fg391zgg33-gcc-wrapper-11.2.0/bin;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/lib/gcc/x86_64-unknown-linux-gnu/11.2.0;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/lib64;/nix/store/4rxyk7cs9srbng8l7vnqmbfyz3xif0vc-gcc-11.2.0/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
