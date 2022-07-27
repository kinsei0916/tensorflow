"""Loads the Flatbuffers library, used by TF Lite."""

load("//third_party:repo.bzl", "tf_http_archive", "tf_mirror_urls")

def repo():
    tf_http_archive(
        name = "flatbuffers",
        strip_prefix = "flatbuffers-6e2791640e789459078eece008d6200c18dda5da",
        sha256 = "09d48e034ff4d7633c70e9494b55cab277acdf174a12a720641e8b19706ff022",
        urls = tf_mirror_urls("https://github.com/google/flatbuffers/archive/6e2791640e789459078eece008d6200c18dda5da.tar.gz"),
        build_file = "//third_party/flatbuffers:flatbuffers.BUILD",
        system_build_file = "//third_party/flatbuffers:BUILD.system",
        link_files = {
            "//third_party/flatbuffers:build_defs.bzl": "build_defs.bzl",
        },
    )
