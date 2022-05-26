#include "NRFCacheManagerApi.hpp"
#include <google/protobuf/util/field_mask_util.h>
#include <algorithm>

using nrf_cache_manager::NRFNFInternalRequestService;
using nrf_cache_manager::NFObjectsGetRequest;
using nrf_cache_manager::NFSearchResult;
using nrf_cache_manager::statusDetails;
using nrf_cache_manager::NRFRHTTPResponseCode;
using nrf_cache_manager::InternalResponseCode;
using nrf_nf_discovery::SearchResult;
using nrf_nf_discovery::NFProfile;
using nrf_nf_discovery::NFService;
using nrf_nf_management::UdmInfo;
using nrf_nf_management::IdentityRange;
using nrf_nf_management::SupiRange;

//using google::protobuf::util;
using google::protobuf::FieldMask;

int main() {
    
    UdmInfo * tmp_UdmInfo1 = new UdmInfo();
    IdentityRange * idRange1_1 = tmp_UdmInfo1 -> add_externalgroupidentifiersranges();
    idRange1_1->set_end("ex_end1_1");
    idRange1_1->set_pattern("ex_pattern1_1");
    idRange1_1->set_start("ex_start1_1");
    IdentityRange * idRange1_2 = tmp_UdmInfo1 -> add_externalgroupidentifiersranges();
    idRange1_2->set_end("ex_end1_2");
    idRange1_2->set_pattern("ex_pattern1_2");
    idRange1_2->set_start("ex_start1_2");
    IdentityRange * gpsiRange1_1 = tmp_UdmInfo1 -> add_gpsiranges();
    gpsiRange1_1->set_end("range_end1_1");
    gpsiRange1_1->set_pattern("range_pattern1_1");
    gpsiRange1_1->set_start("range_start1_1");
    IdentityRange * gpsiRange1_2 = tmp_UdmInfo1 -> add_gpsiranges();
    gpsiRange1_2->set_end("range_end1_2");
    gpsiRange1_2->set_pattern("range_pattern1_2");
    gpsiRange1_2->set_start("range_start1_2");
    tmp_UdmInfo1->set_groupid("Group1");
    tmp_UdmInfo1->add_routingindicators("RoutingIndicator1_1");
    tmp_UdmInfo1->add_routingindicators("RoutingIndicator1_2");
    tmp_UdmInfo1->add_routingindicators("RoutingIndicator1_3");
    SupiRange * supiRange1_1 = tmp_UdmInfo1 -> add_supiranges();
    supiRange1_1->set_end("4999");
    supiRange1_1->set_pattern("1234*");
    supiRange1_1->set_start("1000");
    SupiRange * supiRange1_2 = tmp_UdmInfo1 -> add_supiranges();
    supiRange1_2->set_end("14999");
    supiRange1_2->set_pattern("6789*");
    supiRange1_2->set_start("10000");


   //UdmInfo2 for NFProfile2
    UdmInfo * tmp_UdmInfo2 = new UdmInfo();
    IdentityRange * idRange2_1 = tmp_UdmInfo2 -> add_externalgroupidentifiersranges();
    idRange2_1->set_end("ex_end2_1");
    idRange2_1->set_pattern("ex_pattern2_1");
    idRange2_1->set_start("ex_start2_1");
    IdentityRange * idRange2_2 = tmp_UdmInfo2 -> add_externalgroupidentifiersranges();
    idRange2_2->set_end("ex_end2_2");
    idRange2_2->set_pattern("ex_pattern2_2");
    idRange2_2->set_start("ex_start2_2");
    IdentityRange * gpsiRange2_1 = tmp_UdmInfo2 -> add_gpsiranges();
    gpsiRange2_1->set_end("range_end2_1");
    gpsiRange2_1->set_pattern("range_pattern2_1");
    gpsiRange2_1->set_start("range_start2_1");
    IdentityRange * gpsiRange2_2 = tmp_UdmInfo2 -> add_gpsiranges();
    gpsiRange2_2->set_end("range_end2_2");
    gpsiRange2_2->set_pattern("range_pattern2_2");
    gpsiRange2_2->set_start("range_start2_2");
    tmp_UdmInfo2->set_groupid("Group2");
    tmp_UdmInfo2->add_routingindicators("RoutingIndicator2_1");
    tmp_UdmInfo2->add_routingindicators("RoutingIndicator2_2");
    tmp_UdmInfo2->add_routingindicators("RoutingIndicator2_3");
    SupiRange * supiRange2_1 = tmp_UdmInfo2 -> add_supiranges();
    supiRange2_1->set_end("12999");
    supiRange2_1->set_pattern("supi_pattern2_1");
    supiRange2_1->set_start("5000");
    SupiRange * supiRange2_2 = tmp_UdmInfo2 -> add_supiranges();
    supiRange2_2->set_end("99");
    supiRange2_2->set_pattern("supi_pattern2_2");
    supiRange2_2->set_start("0");

   //SearcResult
    SearchResult * tmp_SearchResult = new SearchResult();
    tmp_SearchResult->set_nrfsupportedfeatures("BLAHBLAHBLAH");
    tmp_SearchResult->set_validityperiod(20);
    
   
   NFProfile * profile1 = tmp_SearchResult->add_nfinstances();
    profile1->set_nfinstanceid("MY_PROFILE_1");
    profile1->set_allocated_udminfo(tmp_UdmInfo1);
    
    auto nfservice = profile1->add_nfservices();
    nfservice->set_servicename("SMSF_SERVICE_A");
    nfservice->set_serviceinstanceid("abcd-a");
    nfservice->set_fqdn("some_fqdn_here_A");
    
    NFProfile * profile2 = tmp_SearchResult->add_nfinstances();
    profile2->set_nfinstanceid("MY_PROFILE_2");
    profile2->set_allocated_udminfo(tmp_UdmInfo2);
    
    auto nfservice2 = profile2->add_nfservices();
    nfservice2->set_servicename("SMSF_SERVICE_B");
    nfservice2->set_serviceinstanceid("abcd-abc");
    nfservice2->set_fqdn("some_fqdn_here_B");
  
    NFProfile *my_profile = new NFProfile();
    FieldMask mask;
    mask.add_paths("nfServices");
    google::protobuf::util::FieldMaskUtil::MergeOptions options;
    //options.set_replace_repeated_fields(true);

    
    google::protobuf::util::FieldMaskUtil::MergeMessageTo(*profile1, mask, options, my_profile);
    google::protobuf::util::FieldMaskUtil::MergeMessageTo(*profile2, mask, options, my_profile);
    google::protobuf::util::FieldMaskUtil::MergeMessageTo(*profile1, mask, options, my_profile);

    std::set<std::string> service_names;

    for(auto &item: my_profile->nfservices()) {
        std::cerr << item.servicename() << std::endl;
        service_names.insert(item.servicename());
    }

    for(auto &i:service_names) {
        std::cerr << "=="<< i << std::endl;
    }
    std::sort(my_profile->mutable_nfservices()->begin(),
                        my_profile->mutable_nfservices()->end(),
                        [](const NFService& a, const NFService& b){
                        return a.serviceinstanceid() < b.serviceinstanceid();
    });
    my_profile->mutable_nfservices()->erase(
        std::unique(my_profile->mutable_nfservices()->begin(),
                        my_profile->mutable_nfservices()->end(),
                        [](const NFService& a, const NFService& b){
                            if(a.serviceinstanceid() == b.serviceinstanceid()) {
                                return true;
                            } 
                            return false;
                        }
                    ), my_profile->mutable_nfservices()->end());
    std::cerr << my_profile->DebugString();
}

