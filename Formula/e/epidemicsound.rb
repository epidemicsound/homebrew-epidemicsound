class Epidemicsound < Formula
    desc "Devtools for EpidemicSound"
    homepage "https://www.epidemicsound.com"
    url "https://github.com/epidemicsound/homebrew-epidemicsound/archive/refs/tags/0.2.tar.gz"
    revsion 1

    # Keep alphabetised
    depends_on "golang"
    depends_on "pkl"
    depends_on "pre-commit"
    depends_on "protobuf"
    depends_on "protoc-gen-go"

    def install
        bin.install "hello-epidemic.sh" => "hello-epidemic"
    end
  end
